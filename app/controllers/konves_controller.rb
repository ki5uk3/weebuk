class KonvesController < ApplicationController
  before_action :set_konfe, only: [:show, :edit, :update, :destroy]

  # GET /konves
  # GET /konves.json
  def index
    @konves = Konfe.all
  end

  # GET /konves/1
  # GET /konves/1.json
  def show
  end

  # GET /konves/new
  def new
    @konfe = Konfe.new
  end

  # GET /konves/1/edit
  def edit
  end

  # POST /konves
  # POST /konves.json
  def create
    @konfe = Konfe.new(konfe_params)

    respond_to do |format|
      if @konfe.save
        format.html { redirect_to @konfe, notice: 'Konfe was successfully created.' }
        format.json { render :show, status: :created, location: @konfe }
      else
        format.html { render :new }
        format.json { render json: @konfe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /konves/1
  # PATCH/PUT /konves/1.json
  def update
    respond_to do |format|
      if @konfe.update(konfe_params)
        format.html { redirect_to @konfe, notice: 'Konfe was successfully updated.' }
        format.json { render :show, status: :ok, location: @konfe }
      else
        format.html { render :edit }
        format.json { render json: @konfe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /konves/1
  # DELETE /konves/1.json
  def destroy
    @konfe.destroy
    respond_to do |format|
      format.html { redirect_to konves_url, notice: 'Konfe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_konfe
      @konfe = Konfe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def konfe_params
      params.require(:konfe).permit(:name, :insta_uname, :snap_uname, :age, :quote)
    end
end