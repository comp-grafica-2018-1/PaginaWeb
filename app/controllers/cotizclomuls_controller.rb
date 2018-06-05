class CotizclomulsController < ApplicationController
  before_action :set_cotizclomul, only: [:show, :edit, :update, :destroy]

  # GET /cotizclomuls
  # GET /cotizclomuls.json
  def index
    #@cotizclomuls = Cotizclomul.all
    @cotizclomuls = Cotizclomul.where("correo = ''")
    if params[:correo] && params[:orden] && params[:filtrar]
      @correoelectronico = params[:correo]
      @cotizclomuls = Cotizclomul.where("correo = ?", @correoelectronico)
      case params[:filtrar]
        when 'confirmadas'
          @cotizclomuls = @cotizclomuls.where("confirmacion = ?", 'COMPRA CONFIRMADA')
        when 'pendientes'
          @cotizclomuls = @cotizclomuls.where("confirmacion = ?", 'Por confirmar')
      end
      case params[:orden]
        when 'Ascendente'
          @cotizclomuls = @cotizclomuls.order(:created_at)
        when 'Descendente'
          @cotizclomuls = @cotizclomuls.order(:created_at).reverse
      end
    end
  end

  # GET /cotizclomuls/1
  # GET /cotizclomuls/1.json
  def show
    if params[:identificador] && params[:clavecompra]
      @identificador = params[:identificador]
      @cotizclomul = Cotizclomul.find(@identificador)
      if params[:clavecompra].to_s == @cotizclomul.clavecompra.to_s
        @ordenclomul = Ordenclomul.new
        @ordenclomul.fechasolicitud = Time.now
        @ordenclomul.fechaentrega = Time.now + 15.days
        @ordenclomul.idcotizacion = @cotizclomul.id
        @ordenclomul.altura = @cotizclomul.altura
        @ordenclomul.anchura = @cotizclomul.anchura
        @ordenclomul.color = @cotizclomul.color
        @ordenclomul.material = @cotizclomul.material
        @ordenclomul.correo = @cotizclomul.correo
        @ordenclomul.nombre = @cotizclomul.nombre
        @ordenclomul.fechacotizacion = @cotizclomul.created_at
        @ordenclomul.cantidad = @cotizclomul.cantidad
        @ordenclomul.save
        @cotizclomul.confirmacion = 'COMPRA CONFIRMADA'
        @cotizclomul.save
        redirect_to @cotizclomul, notice: 'Se ha enviado a tu dirección de correo electrónico la confirmación de orden de compra. Muchas gracias.'
        RemisorOrdenesCompraMailer.confirmacionordenclomul(@ordenclomul).deliver_now
      else
        redirect_to @cotizclomul, notice: 'La clave de confirmación dada no es correcta. Por lo tanto no se confirma esta orden de compra. Intenta nuevamente.'
      end
    elsif params[:identificador]
      @identificador = params[:identificador]
      @cotizclomul = Cotizclomul.find(@identificador)
      RemisorClavesMailer.envioclavecotizclomul(@cotizclomul).deliver_now
      redirect_to @cotizclomul, notice: 'Se ha enviado a tu dirección de correo electrónico la clave de confirmación de orden de compra.'
    end
  end

  # GET /cotizclomuls/new
  def new
    @cotizclomul = Cotizclomul.new
  end

  # GET /cotizclomuls/1/edit
  def edit
  end

  # POST /cotizclomuls
  # POST /cotizclomuls.json
  def create
    @cotizclomul = Cotizclomul.new(cotizclomul_params)
    @cotizclomul.confirmacion = 'Por confirmar'

    numerocaracteresclave = 20
    caracteresclavecompra = %w{ 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z }
    @cotizclomul.clavecompra = ''
    numerocaracteresclave.times do
      indiceletraescogida = rand(caracteresclavecompra.length)
      @cotizclomul.clavecompra = @cotizclomul.clavecompra + caracteresclavecompra[indiceletraescogida]
    end

    respond_to do |format|
      if @cotizclomul.save
        RemisorCotizacionesMailer.confirmacioncotizclomul(@cotizclomul).deliver_now
        #format.html { redirect_to @cotizclomul, notice: 'Cotizclomul was successfully created.' }
        format.html { redirect_to catalogo_index_url, notice: 'La cotización fue creada con éxito. En un momento te enviamos una respuesta por correo electrónico' }
        #format.json { render :show, status: :created, location: @cotizclomul }
      else
        format.html { render :new }
        format.json { render json: @cotizclomul.errors, status: :unprocessable_entity }
      end
    end
    HTTParty.post('http://localhost:3002/api/prices', {body: @cotizclomul.to_json})
  end

  # PATCH/PUT /cotizclomuls/1
  # PATCH/PUT /cotizclomuls/1.json
  def update
    respond_to do |format|
      if @cotizclomul.update(cotizclomul_params)
        format.html { redirect_to @cotizclomul, notice: 'Cotizclomul was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotizclomul }
      else
        format.html { render :edit }
        format.json { render json: @cotizclomul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizclomuls/1
  # DELETE /cotizclomuls/1.json
  def destroy
    @cotizclomul.destroy
    respond_to do |format|
      format.html { redirect_to cotizclomuls_url, notice: 'Cotizclomul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cotizclomul
    @cotizclomul = Cotizclomul.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cotizclomul_params
    params.require(:cotizclomul).permit(:altura, :anchura, :material, :color, :correo, :nombre, :cantidad, :confirmacion, :clavecompra)
  end
end
