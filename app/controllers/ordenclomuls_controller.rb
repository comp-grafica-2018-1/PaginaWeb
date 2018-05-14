class OrdenclomulsController < ApplicationController
  before_action :set_ordenclomul, only: [:show, :edit, :update, :destroy]

  # GET /ordenclomuls
  # GET /ordenclomuls.json
  def index
    @ordenclomuls = Ordenclomul.all
  end

  # GET /ordenclomuls/1
  # GET /ordenclomuls/1.json
  def show
  end

  # GET /ordenclomuls/new
  def new
    @ordenclomul = Ordenclomul.new
  end

  # GET /ordenclomuls/1/edit
  def edit
  end

  # POST /ordenclomuls
  # POST /ordenclomuls.json
  def create
    @ordenclomul = Ordenclomul.new(ordenclomul_params)

    respond_to do |format|
      if @ordenclomul.save
        format.html { redirect_to @ordenclomul, notice: 'Ordenclomul was successfully created.' }
        format.json { render :show, status: :created, location: @ordenclomul }
      else
        format.html { render :new }
        format.json { render json: @ordenclomul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenclomuls/1
  # PATCH/PUT /ordenclomuls/1.json
  def update
    respond_to do |format|
      if @ordenclomul.update(ordenclomul_params)
        format.html { redirect_to @ordenclomul, notice: 'Ordenclomul was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenclomul }
      else
        format.html { render :edit }
        format.json { render json: @ordenclomul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenclomuls/1
  # DELETE /ordenclomuls/1.json
  def destroy
    @ordenclomul.destroy
    respond_to do |format|
      format.html { redirect_to ordenclomuls_url, notice: 'Ordenclomul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenclomul
      @ordenclomul = Ordenclomul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenclomul_params
      params.require(:ordenclomul).permit(:fechaentrega, :idcotizacion, :altura, :anchura, :material, :color, :correo, :nombre, :cantidad, :confirmacion)
    end
end
