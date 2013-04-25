class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
	  	@user = User.new(params[:user])
	    if @user.save
	      redirect_to "/sessions/new", notice: 'User was successfully created. Please login.'
	    else
	    	flash.now[:errors] = @user.errors.full_messages
		  render action: "new"
    end
  end

	def show
  		@user = User.find(params[:id])
  		@garages = Garage.where(:user_id => session[:user_id]).order('date ASC')
  		@garage = Garage.new
  	end

end
