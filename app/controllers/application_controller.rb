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
  
end
