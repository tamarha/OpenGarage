class GaragesController < ApplicationController
  def new
    @garage = Garage.new
    @user = User.find(session[:user_id])
  end

  def create
    @garage = Garage.new(params[:garage])
      if @garage.save
        redirect_to new_image_path
      else
        flash.now[:error] = @garage.errors.full_messages
        @user = User.find(session[:user_id])
      render action: "new"
    end
  end

  def update

  end

  def edit
  end

  def show
    @garages = Garage.find_by_sql("SELECT *, images.id as image_id FROM garages 
                                  LEFT JOIN images ON garages.id = images.garage_id
                                  WHERE zipcode = '"+ params[:zipcode].to_s +
                                  "' AND status = 0 ORDER BY date ASC")
    @listings = Listing.find_by_sql("SELECT * FROM listings
                                  LEFT JOIN types ON listings.type_id = types.id")
  end

  def index
    @garages = Garage.find_by_sql("SELECT *, images.id as image_id FROM garages 
                                  LEFT JOIN images ON garages.id = images.garage_id 
                                  WHERE status = 0 ORDER BY date ASC")
    @listings = Listing.find_by_sql("SELECT * FROM listings
                                  LEFT JOIN types ON listings.type_id = types.id")
  end

  def search
    # @garages = Garage.find_by_sql("SELECT *, images.id as image_id FROM garages 
    #                               LEFT JOIN images ON garages.id = images.garage_id
    #                               WHERE zipcode = '"+ params[:zipcode].to_s +
    #                               "' AND status = 0 ORDER BY date ASC")
    # redirect_to action: 'index'
  end
end
