# encoding: utf-8
class Admin::HomeController < ApplicationController
  
  before_filter :authenticate_user!
  layout 'admin'
  
  def index
    @title = "Administration"
    @promo = Promo.first
    @focus = Focu.first
    @activity = Activity.first
  end
    
end
