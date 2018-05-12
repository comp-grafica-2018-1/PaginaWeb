class CotizmescamsController < ApplicationController
  before_action :set_cotizmescam, only: [:show, :edit, :update, :destroy]

  # GET /cotizmescams
  # GET /cotizmescams.json
  def index
    @cotizmescams = Cotizmescam.all
  end

  # GET /cotizmescams/1
  # GET /cotizmescams/1.json
  def show
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

    respond_to do |format|
      if @cotizmescam.save
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
      params.require(:cotizmescam).permit(:colchon, :material, :color, :cajonsuperior, :repisa, :correo, :nombre)
    end
end
