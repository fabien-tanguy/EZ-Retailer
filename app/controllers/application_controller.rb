class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :title
  
  def title 
    @title ||= "Artisans du web"
  end  
  
  #devise
  def after_sign_in_path_for(resource)
      admin_index_path   
  end
  
  def after_sign_out_path_for(resource)
      root_path   
  end
  
  #check if a photo was uploaded to the server but not added in the album  
  def photo_uploaded_but_not_added
    if params[:image].present?
      Cloudinary::Uploader.destroy(params[:image][:public_id])
    end
  end
end
