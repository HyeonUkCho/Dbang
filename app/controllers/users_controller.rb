class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    def new
        @houses = House.all
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            log_in(@user)
	        flash[:success] = "Welcome to the DaBang App!"
	        redirect_to @user
        else
            render 'new'
        end
    end
    
    def show
        @houses = House.all
        @user_houses = @user.houses.all
    end
    
    def edit
        @houses = House.all
    end
    
    def update
        @houses = House.all
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to @user, notice: 'My Information was successfully updated.' }
          else
            format.html { render :edit }
          end
        end
      end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to '/', notice: 'User was successfully destroyed.' }
      end
    end
    
    def destroy_house
       session[:return_to] ||= request.referer
       @house = House.find(params[:id])
       @house.destroy
       redirect_to session.delete(:return_to)
    end
    
    private
    def user_params
    params.require(:user).permit(:name, :phonenumber, :email, :password, :password_confirmation)
    end
    
    private
    def set_user
        @user = User.find(params[:id])
    end
        
    
end
