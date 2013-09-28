# encoding: utf-8
class Admin::HomeController < ApplicationController
  layout 'admin'
  
  def index
    @title = "Administration"
    @promo = Promo.first
    @focus = Focu.first
    @activity = Activity.first

  end
    
end
