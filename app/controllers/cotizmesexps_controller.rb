class CotizmesexpsController < ApplicationController
  before_action :set_cotizmesexp, only: [:show, :edit, :update, :destroy]

  # GET /cotizmesexps
  # GET /cotizmesexps.json
  def index
    @cotizmesexps = Cotizmesexp.all
  end

  # GET /cotizmesexps/1
  # GET /cotizmesexps/1.json
  def show
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

    respond_to do |format|
      if @cotizmesexp.save
        format.html { redirect_to @cotizmesexp, notice: 'Cotizmesexp was successfully created.' }
        format.json { render :show, status: :created, location: @cotizmesexp }
      else
        format.html { render :new }
        format.json { render json: @cotizmesexp.errors, status: :unprocessable_entity }
      end
    end
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
      params.require(:cotizmesexp).permit(:correo, :nombre)
    end
end
