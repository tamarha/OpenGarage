class ListingsController < ApplicationController

  def new
    @listing = Listing.new
    @user = User.find(session[:user_id])
    @garage = Garage.last
  end

  def create
  	@selected_types = (params[:listing][:type_id])
  	garage_id = params[:listing][:garage_id]
  	@selected_types.each do |type_id|
  		if type_id != ""
  			@listing = Listing.new
	  		@listing.type_id = type_id
	  		@listing.garage_id = garage_id
	  		@listing.save
  		end
  		
  	end
      if @listing.save
        redirect_to '/garages'
      end
  end

  def update
  end

  def edit
  end

  def show
  end

  def index
  end

end
