class ExtrainfosController < ApplicationController
  before_action :set_extrainfo, only: [:show, :edit, :update, :destroy]

  # GET /extrainfos
  # GET /extrainfos.json
  def index
    @extrainfos = Extrainfo.all
  end

  # GET /extrainfos/1
  # GET /extrainfos/1.json
  def show
  end

  # GET /extrainfos/new
  def new
    @extrainfo = Extrainfo.new
  end

  # GET /extrainfos/1/edit
  def edit
  end

  # POST /extrainfos
  # POST /extrainfos.json
  def create
    @extrainfo = Extrainfo.new(extrainfo_params)

    respond_to do |format|
      if @extrainfo.save
        format.html { redirect_to @extrainfo, notice: 'Extrainfo was successfully created.' }
        format.json { render :show, status: :created, location: @extrainfo }
      else
        format.html { render :new }
        format.json { render json: @extrainfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extrainfos/1
  # PATCH/PUT /extrainfos/1.json
  def update
    respond_to do |format|
      if @extrainfo.update(extrainfo_params)
        format.html { redirect_to @extrainfo, notice: 'Extrainfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @extrainfo }
      else
        format.html { render :edit }
        format.json { render json: @extrainfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extrainfos/1
  # DELETE /extrainfos/1.json
  def destroy
    @extrainfo.destroy
    respond_to do |format|
      format.html { redirect_to extrainfos_url, notice: 'Extrainfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extrainfo
      @extrainfo = Extrainfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extrainfo_params
      params.require(:extrainfo).permit(:house_id, :managebool, :managefee, :internet, :television, :cleanfee, :waterfee, :parking, :enterdate, :aircon, :laundary, :pet)
    end
end
