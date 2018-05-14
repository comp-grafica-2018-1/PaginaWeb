class CotizclomulsController < ApplicationController
  before_action :set_cotizclomul, only: [:show, :edit, :update, :destroy]

  # GET /cotizclomuls
  # GET /cotizclomuls.json
  def index
    #@cotizclomuls = Cotizclomul.all
    @cotizclomuls = Cotizclomul.where("correo = ''")
    if params[:correo]
      @correoelectronico = params[:correo]
      @cotizclomuls = Cotizclomul.where("correo = ?", @correoelectronico)
    end
  end

  # GET /cotizclomuls/1
  # GET /cotizclomuls/1.json
  def show
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

    respond_to do |format|
      if @cotizclomul.save
        RemisorCotizacionesMailer.confirmacioncotizclomul(@cotizclomul).deliver_now
        format.html { redirect_to @cotizclomul, notice: 'Cotizclomul was successfully created.' }
        format.json { render :show, status: :created, location: @cotizclomul }
      else
        format.html { render :new }
        format.json { render json: @cotizclomul.errors, status: :unprocessable_entity }
      end
    end
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
      params.require(:cotizclomul).permit(:altura, :anchura, :material, :color, :correo, :nombre, :cantidad, :confirmacion)
    end
end
