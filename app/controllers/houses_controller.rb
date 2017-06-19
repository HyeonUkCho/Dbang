class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]

  # GET /houses
  # GET /houses.json
  def index
    redirect_to '/houses/new'
    #@houses = House.paginate(:page => params[:page], :per_page => 2)
  end
  
  def favorite
    if current_user.nil?
      redirect_to '/'
    end
  end
  
  # GET /houses/1
  # GET /houses/1.json
  def show
    @houses = House.all
    @image_attachments = @house.image_attachments.all
    @normalinfos = @house.normalinfo
    @addresses = @house.address
    @extrainfos = @house.extrainfo

  end

  # GET /houses/new
  def new
    @houses = House.all
    if current_user.nil?
      respond_to do |format|
        format.html { redirect_to '/', alert: 'Login Please!' }
      end
    else
      @house = House.new
      @image_attachment = @house.image_attachments.build
      @normalinfo = @house.build_normalinfo
      @extrainfo = @house.build_extrainfo
      @address = @house.build_address
    end
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  # POST /houses.json
  def create
   @houses = House.all
   @house = House.new(house_params)
   @house.user_id = current_user.id
    respond_to do |format|
      if @house.save
        params[:image_attachments]['avatar'].each do |a|
          @image_attachments = @house.image_attachments.create!(:avatar => a)
        end
        format.html { redirect_to @house, notice: 'House was successfully created.' }
      else
        format.html { redirect_to '/houses/new',alert: '사진 , 주소, 제목, 방설명, 방종류, 매매종류, 매매가격, 월세 중 입력이 안됀 것이 있습니다.' }
      end
    end

  end

  # PATCH/PUT /houses/1
   #PATCH/PUT /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    @house.destroy
    respond_to do |format|
      format.html { redirect_to houses_url, notice: 'House was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:house).permit(:title, :description, image_attachments_attributes: [:id, :house_id, :avatar],
                                    normalinfo_attributes: [:id, :house_id,:housetype,:dealtype,:monthlyfee,:tradefee,:totalfloor,:myfloor],
                                    address_attributes: [:id, :house_id, :postcode, :mainaddress, :detailaddress],
                                    extrainfo_attributes: [:id, :house_id, :managebool,:managefee,:internet,:television,:cleanfee,:waterfee,
                                                          :parking,:enterdate,:aircon,:laundary,:pet])

    end
end
