class HomeController < ApplicationController
    def index
        @houses = House.all.paginate(:page => params[:page], :per_page => 100)
        @permit_pet = Extrainfo.where("pet LIKE ?","가능").paginate(:page => params[:page], :per_page => 100)
        @has_aircon = Extrainfo.where("aircon LIKE ?","있음").paginate(:page => params[:page], :per_page => 100)
        @has_laundary = Extrainfo.where("laundary LIKE ?","있음").paginate(:page => params[:page], :per_page => 100)
        @permit_parking = Extrainfo.where("parking LIKE ?","가능").paginate(:page => params[:page], :per_page => 100)
        @has_tv = Extrainfo.where("television LIKE ?","포함").paginate(:page => params[:page], :per_page => 100)
        @no_managebool = Extrainfo.where("managebool LIKE ?","없음").paginate(:page => params[:page], :per_page => 100)
    end
    
    def map_page
        @houses = House.all
        if params[:search] == ""
            redirect_to '/'
        else
            @search_result = Address.where("mainaddress LIKE ?","%#{params[:search]}%").paginate(:page => params[:page], :per_page => 4)
            @address_result = Address.where("mainaddress LIKE ?","%#{params[:search]}%")
            @array = Array.new
            @address_result.each do |a|
                @array << a.mainaddress.to_s
            end
            @arrTitle = Array.new
            @address_result.each do |a|
                @arrTitle << a.house.title
            end
        end    
    end
end
