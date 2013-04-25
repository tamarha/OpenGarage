class ImagesController < ApplicationController

  def new
    @image = Image.new
    @user = User.find(session[:user_id])
    @garage = Garage.last
  end

  

  def create

    def upload
      puts uploaded_io = params[:image][:url]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
        file.write(uploaded_io.read)
      end
    end

    redirect_to new_listing_path
    # @selected_types = (params[:listing][:type_id])
    # garage_id = params[:listing][:garage_id]
    # @selected_types.each do |type_id|
    #   if type_id != ""
    #     @listing = Listing.new
    #     @listing.type_id = type_id
    #     @listing.garage_id = garage_id
    #     @listing.save
    #   end  
    # end
    #   if @listing.save
    #     redirect_to new_garage_path
    #   else
    #     flash.now[:error] = @listing.errors.full_messages
    #     @user = User.find(session[:user_id])
    #   render action: "new"
    #   end
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
