# encoding: utf-8
class Admin::HomeController < ApplicationController
  
  before_filter :authenticate_admin!
  before_filter :photo_uploaded_but_not_added
  layout 'admin'
  
  def index
    @title = "Administration"
    @promo = Promo.first
    @focus = Focu.first
    @activity = Activity.first
  end
    
end
