class NormalinfosController < ApplicationController
  before_action :set_normalinfo, only: [:show, :edit, :update, :destroy]

  # GET /normalinfos
  # GET /normalinfos.json
  def index
    @normalinfos = Normalinfo.all
  end

  # GET /normalinfos/1
  # GET /normalinfos/1.json
  def show
  end

  # GET /normalinfos/new
  def new
    @normalinfo = Normalinfo.new
  end

  # GET /normalinfos/1/edit
  def edit
  end

  # POST /normalinfos
  # POST /normalinfos.json
  def create
    @normalinfo = Normalinfo.new(normalinfo_params)

    respond_to do |format|
      if @normalinfo.save
        format.html { redirect_to @normalinfo, notice: 'Normalinfo was successfully created.' }
        format.json { render :show, status: :created, location: @normalinfo }
      else
        format.html { render :new }
        format.json { render json: @normalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /normalinfos/1
  # PATCH/PUT /normalinfos/1.json
  def update
    respond_to do |format|
      if @normalinfo.update(normalinfo_params)
        format.html { redirect_to @normalinfo, notice: 'Normalinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @normalinfo }
      else
        format.html { render :edit }
        format.json { render json: @normalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /normalinfos/1
  # DELETE /normalinfos/1.json
  def destroy
    @normalinfo.destroy
    respond_to do |format|
      format.html { redirect_to normalinfos_url, notice: 'Normalinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_normalinfo
      @normalinfo = Normalinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def normalinfo_params
      params.require(:normalinfo).permit(:house_id, :housetype, :dealtype, :monthlyfee, :tradefee, :totalfloor, :myfloor)
    end
end
