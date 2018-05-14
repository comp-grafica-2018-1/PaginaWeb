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
