class CotizmesexpsController < ApplicationController
  before_action :set_cotizmesexp, only: [:show, :edit, :update, :destroy]

  # GET /cotizmesexps
  # GET /cotizmesexps.json
  def index
    #@cotizmesexps = Cotizmesexp.all
    @cotizmesexps = Cotizmesexp.where("correo = ''")
    if params[:correo]
      @correoelectronico = params[:correo]
      @cotizmesexps = Cotizmesexp.where("correo = ?", @correoelectronico)
    end
  end

  # GET /cotizmesexps/1
  # GET /cotizmesexps/1.json
  def show
    if params[:identificador] && params[:clavecompra]
      @identificador = params[:identificador]
      @cotizmesexp = Cotizmesexp.find(@identificador)
      if params[:clavecompra].to_s == @cotizmesexp.clavecompra.to_s
        @ordenmesexp = Ordenclomul.new
        @ordenmesexp.fechasolicitud = Time.now
        @ordenmesexp.fechaentrega = Time.now + 15.days
        @ordenmesexp.idcotizacion = @cotizmesexp.id
        @ordenmesexp.color = @cotizmesexp.color
        @ordenmesexp.material = @cotizmesexp.material
        @ordenmesexp.numeropuestos = @cotizmesexp.numeropuestos
        @ordenmesexp.correo = @cotizmesexp.correo
        @ordenmesexp.nombre = @cotizmesexp.nombre
        @ordenmesexp.fechacotizacion = @cotizmesexp.created_at
        @ordenmesexp.cantidad = @cotizmesexp.cantidad
        @ordenmesexp.save
        p HTTParty.post('http://localhost:3002/api/bills', {body:@ordenmesexp.to_json, headers:{'Content-Type': 'application/json'}})
        @cotizmesexp.confirmacion = 'COMPRA CONFIRMADA'
        @cotizmesexp.save
        redirect_to @cotizmesexp, notice: 'Se ha enviado a tu dirección de correo electrónico la confirmación de orden de compra. Muchas gracias.'
        RemisorOrdenesCompraMailer.confirmacionordenmesexp(@ordenmesexp).deliver_now
      else
        redirect_to @cotizmesexp, notice: 'La clave de confirmación dada no es correcta. Por lo tanto no se confirma esta órden de compra. Intenta nuevamente.'
      end
    elsif params[:identificador]
      @identificador = params[:identificador]
      @cotizmesexp = Cotizmesexp.find(@identificador)
      RemisorClavesMailer.envioclavecotizmesexp(@cotizmesexp).deliver_now
      redirect_to @cotizmesexp
    end
  end

  # GET /cotizmesexps/new
  def new
    @cotizmesexp = Cotizmesexp.new
  end

  # GET /cotizmesexps/1/edit
  def edit
  end

  # POST /cotizmesexps
  # POST /cotizmesexps.json
  def create
    @cotizmesexp = Cotizmesexp.new(cotizmesexp_params)
    @cotizmesexp.confirmacion = 'Por confirmar'

    numerocaracteresclave = 20
    caracteresclavecompra = %w{ 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z }
    @cotizmesexp.clavecompra = ''
    numerocaracteresclave.times do
      indiceletraescogida = rand(caracteresclavecompra.length)
      @cotizmesexp.clavecompra = @cotizmesexp.clavecompra + caracteresclavecompra[indiceletraescogida]
    end

    respond_to do |format|
      if @cotizmesexp.save
        RemisorCotizacionesMailer.confirmacioncotizmesexp(@cotizmesexp).deliver_now
        format.html { redirect_to @cotizmesexp, notice: 'Cotizmesexp was successfully created.' }
        format.json { render :show, status: :created, location: @cotizmesexp }
      else
        format.html { render :new }
        format.json { render json: @cotizmesexp.errors, status: :unprocessable_entity }
      end
    end
    p HTTParty.post('http://localhost:3002/api/prices', {body:@cotizmesexp.to_json, headers:{'Content-Type': 'application/json'}})
  end

  # PATCH/PUT /cotizmesexps/1
  # PATCH/PUT /cotizmesexps/1.json
  def update
    respond_to do |format|
      if @cotizmesexp.update(cotizmesexp_params)
        format.html { redirect_to @cotizmesexp, notice: 'Cotizmesexp was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotizmesexp }
      else
        format.html { render :edit }
        format.json { render json: @cotizmesexp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizmesexps/1
  # DELETE /cotizmesexps/1.json
  def destroy
    @cotizmesexp.destroy
    respond_to do |format|
      format.html { redirect_to cotizmesexps_url, notice: 'Cotizmesexp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotizmesexp
      @cotizmesexp = Cotizmesexp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotizmesexp_params
      params.require(:cotizmesexp).permit(:numeropuestos, :material, :color, :correo, :nombre, :cantidad, :confirmacion, :clavecompra)
    end
end
