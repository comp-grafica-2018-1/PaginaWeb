class OrdenmescamsController < ApplicationController
  before_action :set_ordenmescam, only: [:show, :edit, :update, :destroy]

  # GET /ordenmescams
  # GET /ordenmescams.json
  def index
    @ordenmescams = Ordenmescam.all
  end

  # GET /ordenmescams/1
  # GET /ordenmescams/1.json
  def show
  end

  # GET /ordenmescams/new
  def new
    @ordenmescam = Ordenmescam.new
  end

  # GET /ordenmescams/1/edit
  def edit
  end

  # POST /ordenmescams
  # POST /ordenmescams.json
  def create
    @ordenmescam = Ordenmescam.new(ordenmescam_params)

    respond_to do |format|
      if @ordenmescam.save
        format.html { redirect_to @ordenmescam, notice: 'Ordenmescam was successfully created.' }
        format.json { render :show, status: :created, location: @ordenmescam }
      else
        format.html { render :new }
        format.json { render json: @ordenmescam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenmescams/1
  # PATCH/PUT /ordenmescams/1.json
  def update
    respond_to do |format|
      if @ordenmescam.update(ordenmescam_params)
        format.html { redirect_to @ordenmescam, notice: 'Ordenmescam was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenmescam }
      else
        format.html { render :edit }
        format.json { render json: @ordenmescam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenmescams/1
  # DELETE /ordenmescams/1.json
  def destroy
    @ordenmescam.destroy
    respond_to do |format|
      format.html { redirect_to ordenmescams_url, notice: 'Ordenmescam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenmescam
      @ordenmescam = Ordenmescam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenmescam_params
      params.fetch(:ordenmescam, {})
    end
end
