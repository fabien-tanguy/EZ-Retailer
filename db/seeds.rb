# encoding: utf-8 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Admin 
Admin.delete_all 
Admin.create!(:email => "adw.coop@gmail.com", :password => "SalutMaPoule8600", :password_confirmation => "SalutMaPoule8600")

# Create Promo
Promo.delete_all 
Promo.create!(:title => "le titre de votre promo", :description => "décrire ma ou mes promo(s), attention la description doit contenir au minimum 10 lettres")

# Create Focus
Focu.delete_all 
Focu.create!(:title => "le titre de votre focus", :description => "décrire ma ou mes focus, attention la description doit contenir au minimum 10 lettres")