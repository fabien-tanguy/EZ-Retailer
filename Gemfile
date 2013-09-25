source 'https://rubygems.org'
ruby '1.9.3'


gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#database 
gem 'pg'

#server 
gem 'thin'

#local
gem 'rails-i18n'

#forms
gem 'simple_form'
gem 'country_select'

#geocoding 
#gem 'geocoder'

#javascript 
gem 'jquery-rails'

#jquery mobile 
gem 'jquery_mobile_rails'


#hack heroku plugin injection
gem 'rails_12factor'

#devise authentification
gem 'devise' 

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  #gem "therubyracer"
  #gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS  
  
  #Jquery uploader
  gem "jquery-fileupload-rails"
end



#twitter authentification
#gem 'twitter'
#gem 'oauth'



gem 'rmagick'
gem 'carrierwave'
gem 'carrierwave-aws'


#development 
group :development do 
  #to use it, rake erd at the application root 
  gem 'rails-erd'
  gem 'rspec-rails'
end    


#test 
group :test do 
  gem 'spork'
  gem 'rspec'
  gem 'autotest'
  gem 'autotest-rails-pure'
  gem 'autotest-fsevent'
  gem 'autotest-growl'
  gem 'capybara'
  gem 'factory_girl_rails',"~> 4.0"
  gem "ZenTest", "~> 4.9.3"
end

#don't put should in the same test group 
group :test do 
  gem 'shoulda-matchers'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'