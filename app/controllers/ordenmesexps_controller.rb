class OrdenmesexpsController < ApplicationController
  before_action :set_ordenmesexp, only: [:show, :edit, :update, :destroy]

  # GET /ordenmesexps
  # GET /ordenmesexps.json
  def index
    #@ordenmesexps = Ordenmesexp.all
    @ordenmesexps = Ordenmesexp.where("correo = ''")
    if params[:correo]
      @correoelectronico = params[:correo]
      @ordenmesexps = Ordenmesexp.where("correo = ?", @correoelectronico)
    end
  end

  # GET /ordenmesexps/1
  # GET /ordenmesexps/1.json
  def show
  end

  # GET /ordenmesexps/new
  def new
    @ordenmesexp = Ordenmesexp.new
  end

  # GET /ordenmesexps/1/edit
  def edit
  end

  # POST /ordenmesexps
  # POST /ordenmesexps.json
  def create
    @ordenmesexp = Ordenmesexp.new(ordenmesexp_params)

    respond_to do |format|
      if @ordenmesexp.save
        format.html { redirect_to @ordenmesexp, notice: 'Ordenmesexp was successfully created.' }
        format.json { render :show, status: :created, location: @ordenmesexp }
      else
        format.html { render :new }
        format.json { render json: @ordenmesexp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenmesexps/1
  # PATCH/PUT /ordenmesexps/1.json
  def update
    respond_to do |format|
      if @ordenmesexp.update(ordenmesexp_params)
        format.html { redirect_to @ordenmesexp, notice: 'Ordenmesexp was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenmesexp }
      else
        format.html { render :edit }
        format.json { render json: @ordenmesexp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenmesexps/1
  # DELETE /ordenmesexps/1.json
  def destroy
    @ordenmesexp.destroy
    respond_to do |format|
      format.html { redirect_to ordenmesexps_url, notice: 'Ordenmesexp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenmesexp
      @ordenmesexp = Ordenmesexp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenmesexp_params
      params.require(:ordenmesexp).permit(:fechaentrega, :idcotizacion, :numeropuestos, :material, :color, :correo, :nombre, :cantidad, :confirmacion)
    end
end
