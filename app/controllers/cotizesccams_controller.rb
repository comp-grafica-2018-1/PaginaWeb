class CotizesccamsController < ApplicationController
  before_action :set_cotizesccam, only: [:show, :edit, :update, :destroy]

  # GET /cotizesccams
  # GET /cotizesccams.json
  def index
    #@cotizesccams = Cotizesccam.all
    @cotizesccams = Cotizesccam.where("correo = ''")
    if params[:correo]
      @correoelectronico = params[:correo]
      @cotizesccams = Cotizesccam.where("correo = ?", @correoelectronico)
    end
  end

  # GET /cotizesccams/1
  # GET /cotizesccams/1.json
  def show
    if params[:identificador] && params[:clavecompra]
      @identificador = params[:identificador]
      @cotizesccam = Cotizesccam.find(@identificador)
      if params[:clavecompra].to_s == @cotizesccam.clavecompra.to_s
        @ordenesccam = Ordenclomul.new
        @ordenesccam.fechasolicitud = Time.now
        @ordenesccam.fechaentrega = Time.now + 15.days
        @ordenesccam.idcotizacion = @cotizesccam.id
        @ordenesccam.color = @cotizesccam.color
        @ordenesccam.material = @cotizesccam.material
        @ordenesccam.colchon = @cotizesccam.colchon
        @ordenesccam.correo = @cotizesccam.correo
        @ordenesccam.nombre = @cotizesccam.nombre
        @ordenesccam.fechacotizacion = @cotizesccam.created_at
        @ordenesccam.cantidad = @cotizesccam.cantidad
        @ordenesccam.save
        @cotizesccam.confirmacion = 'COMPRA CONFIRMADA'
        @cotizesccam.save
        redirect_to @cotizesccam, notice: 'Se ha enviado a tu dirección de correo electrónico la confirmación de orden de compra. Muchas gracias.'
        RemisorOrdenesCompraMailer.confirmacionordenesccam(@ordenesccam).deliver_now
      else
        redirect_to @cotizesccam, notice: 'La clave de confirmación dada no es correcta. Por lo tanto no se confirma esta órden de compra. Intenta nuevamente.'
      end
    elsif params[:identificador]
      @identificador = params[:identificador]
      @cotizesccam = Cotizesccam.find(@identificador)
      RemisorClavesMailer.envioclavecotizesccam(@cotizesccam).deliver_now
      redirect_to @cotizesccam
    end
  end

  # GET /cotizesccams/new
  def new
    @cotizesccam = Cotizesccam.new
  end

  # GET /cotizesccams/1/edit
  def edit
  end

  # POST /cotizesccams
  # POST /cotizesccams.json
  def create
    @cotizesccam = Cotizesccam.new(cotizesccam_params)
    @cotizesccam.confirmacion = 'Por confirmar'

    numerocaracteresclave = 20
    caracteresclavecompra = %w{ 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z }
    @cotizesccam.clavecompra = ''
    numerocaracteresclave.times do
      indiceletraescogida = rand(caracteresclavecompra.length)
      @cotizesccam.clavecompra = @cotizesccam.clavecompra + caracteresclavecompra[indiceletraescogida]
    end

    respond_to do |format|
      if @cotizesccam.save
        RemisorCotizacionesMailer.confirmacioncotizesccam(@cotizesccam).deliver_now
        format.html { redirect_to @cotizesccam, notice: 'Cotizesccam was successfully created.' }
        format.json { render :show, status: :created, location: @cotizesccam }
      else
        format.html { render :new }
        format.json { render json: @cotizesccam.errors, status: :unprocessable_entity }
      end
    end
    HTTParty.post('http://localhost:3002/api/prices', {body: @cotizesccam.to_json})
  end

  # PATCH/PUT /cotizesccams/1
  # PATCH/PUT /cotizesccams/1.json
  def update
    respond_to do |format|
      if @cotizesccam.update(cotizesccam_params)
        format.html { redirect_to @cotizesccam, notice: 'Cotizesccam was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotizesccam }
      else
        format.html { render :edit }
        format.json { render json: @cotizesccam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizesccams/1
  # DELETE /cotizesccams/1.json
  def destroy
    @cotizesccam.destroy
    respond_to do |format|
      format.html { redirect_to cotizesccams_url, notice: 'Cotizesccam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cotizesccam
    @cotizesccam = Cotizesccam.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cotizesccam_params
    params.require(:cotizesccam).permit(:colchon, :material, :color, :correo, :nombre, :cantidad, :confirmacion, :clavecompra)
  end
end
