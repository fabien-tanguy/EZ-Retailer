class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :title
  
  def title 
    @title ||= "Artisans du web"
  end  
  
end
