class OrdenesccamsController < ApplicationController
  before_action :set_ordenesccam, only: [:show, :edit, :update, :destroy]

  # GET /ordenesccams
  # GET /ordenesccams.json
  def index
    #@ordenesccams = Ordenesccam.all
    @ordenesccams = Ordenesccam.where("correo = ''")
    if params[:correo]
      @correoelectronico = params[:correo]
      @ordenesccams = Ordenesccam.where("correo = ?", @correoelectronico)
    end
  end

  # GET /ordenesccams/1
  # GET /ordenesccams/1.json
  def show
  end

  # GET /ordenesccams/new
  def new
    @ordenesccam = Ordenesccam.new
  end

  # GET /ordenesccams/1/edit
  def edit
  end

  # POST /ordenesccams
  # POST /ordenesccams.json
  def create
    @ordenesccam = Ordenesccam.new(ordenesccam_params)

    respond_to do |format|
      if @ordenesccam.save
        format.html { redirect_to @ordenesccam, notice: 'Ordenesccam was successfully created.' }
        format.json { render :show, status: :created, location: @ordenesccam }
      else
        format.html { render :new }
        format.json { render json: @ordenesccam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenesccams/1
  # PATCH/PUT /ordenesccams/1.json
  def update
    respond_to do |format|
      if @ordenesccam.update(ordenesccam_params)
        format.html { redirect_to @ordenesccam, notice: 'Ordenesccam was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenesccam }
      else
        format.html { render :edit }
        format.json { render json: @ordenesccam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenesccams/1
  # DELETE /ordenesccams/1.json
  def destroy
    @ordenesccam.destroy
    respond_to do |format|
      format.html { redirect_to ordenesccams_url, notice: 'Ordenesccam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenesccam
      @ordenesccam = Ordenesccam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenesccam_params
      params.require(:ordenesccam).permit(:fechaentrega, :idcotizacion, :colchon, :material, :color, :correo, :nombre, :cantidad, :confirmacion)
    end
end
