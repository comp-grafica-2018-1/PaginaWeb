class CotizmescamsController < ApplicationController
  before_action :set_cotizmescam, only: [:show, :edit, :update, :destroy]

  # GET /cotizmescams
  # GET /cotizmescams.json
  def index
    #@cotizmescams = Cotizmescam.all
    @cotizmescams = Cotizmescam.where("correo = ''")
    if params[:correo] && params[:orden] && params[:filtrar]
      @correoelectronico = params[:correo]
      @cotizmescams = Cotizmescam.where("correo = ?", @correoelectronico)
      case params[:filtrar]
      when 'confirmadas'
        @cotizmescams = @cotizmescams.where("confirmacion = ?", 'COMPRA CONFIRMADA')
      when 'pendientes'
        @cotizmescams = @cotizmescams.where("confirmacion = ?", 'Por confirmar')
      end
      case params[:orden]
      when 'Ascendente'
        @cotizmescams = @cotizmescams.order(:created_at)
      when 'Descendente'
        @cotizmescams = @cotizmescams.order(:created_at).reverse
      end
    end
  end

  # GET /cotizmescams/1
  # GET /cotizmescams/1.json
  def show
    if params[:identificador] && params[:clavecompra]
      @identificador = params[:identificador]
      @cotizmescam = Cotizmescam.find(@identificador)
      if params[:clavecompra].to_s == @cotizmescam.clavecompra.to_s
        @ordenmescam = Ordenmescam.new
        @ordenmescam.fechasolicitud = Time.now
        @ordenmescam.fechaentrega = Time.now + 15.days
        @ordenmescam.idcotizacion = @cotizmescam.id
        @ordenmescam.color = @cotizmescam.color
        @ordenmescam.material = @cotizmescam.material
        @ordenmescam.colchon = @cotizmescam.colchon
        @ordenmescam.cajonsuperior = @cotizmescam.cajonsuperior
        @ordenmescam.repisa = @cotizmescam.repisa
        @ordenmescam.correo = @cotizmescam.correo
        @ordenmescam.nombre = @cotizmescam.nombre
        @ordenmescam.fechacotizacion = @cotizmescam.created_at
        @ordenmescam.cantidad = @cotizmescam.cantidad
        if @ordenmescam.save
          p HTTParty.post('http://localhost:3002/api/bills', {body: @ordenmescam.to_json, headers: {'Content-Type': 'application/json'}})
          @cotizmescam.confirmacion = 'COMPRA CONFIRMADA'
          @cotizmescam.save
          redirect_to @cotizmescam, notice: 'Se ha enviado a tu dirección de correo electrónico la confirmación de orden de compra. Muchas gracias.'
          RemisorOrdenesCompraMailer.confirmacionordenmescam(@ordenmescam).deliver_now
        end
      else
        redirect_to @cotizmescam, notice: 'La clave de confirmación dada no es correcta. Por lo tanto no se confirma esta orden de compra. Intenta nuevamente.'
      end
    elsif params[:identificador]
      @identificador = params[:identificador]
      @cotizmescam = Cotizmescam.find(@identificador)
      RemisorClavesMailer.envioclavecotizmescam(@cotizmescam).deliver_now
      redirect_to @cotizmescam, notice: 'Se ha enviado a tu dirección de correo electrónico la clave de confirmación de orden de compra.'
    end
  end

  # GET /cotizmescams/new
  def new
    @cotizmescam = Cotizmescam.new
  end

  # GET /cotizmescams/1/edit
  def edit
  end

  # POST /cotizmescams
  # POST /cotizmescams.json
  def create
    @cotizmescam = Cotizmescam.new(cotizmescam_params)
    @cotizmescam.confirmacion = 'Por confirmar'

    numerocaracteresclave = 20
    caracteresclavecompra = %w{ 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z }
    @cotizmescam.clavecompra = ''
    numerocaracteresclave.times do
      indiceletraescogida = rand(caracteresclavecompra.length)
      @cotizmescam.clavecompra = @cotizmescam.clavecompra + caracteresclavecompra[indiceletraescogida]
    end

    respond_to do |format|
      if @cotizmescam.save
        RemisorCotizacionesMailer.confirmacioncotizmescam(@cotizmescam).deliver_now
        p HTTParty.post('http://localhost:3002/api/prices', {body: @cotizmescam.to_json, headers: {'Content-Type': 'application/json'}})
        format.html { redirect_to @cotizmescam, notice: 'Cotizmescam was successfully created.' }
        format.json { render :show, status: :created, location: @cotizmescam }
      else
        format.html { render :new }
        format.json { render json: @cotizmescam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotizmescams/1
  # PATCH/PUT /cotizmescams/1.json
  def update
    respond_to do |format|
      if @cotizmescam.update(cotizmescam_params)
        format.html { redirect_to @cotizmescam, notice: 'Cotizmescam was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotizmescam }
      else
        format.html { render :edit }
        format.json { render json: @cotizmescam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizmescams/1
  # DELETE /cotizmescams/1.json
  def destroy
    @cotizmescam.destroy
    respond_to do |format|
      format.html { redirect_to cotizmescams_url, notice: 'Cotizmescam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cotizmescam
    @cotizmescam = Cotizmescam.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cotizmescam_params
    params.require(:cotizmescam).permit(:colchon, :material, :color, :cajonsuperior, :repisa, :correo, :nombre, :cantidad, :confirmacion, :clavecompra)
  end
end
