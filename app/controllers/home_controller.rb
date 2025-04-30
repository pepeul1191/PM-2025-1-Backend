require_relative 'application_controller'

class HomeController < ApplicationController
  before '/' do
    validate_jwt
  end

  get '/' do
    puts format_date(Time.now)
    erb :'home/index', layout: :'layouts/blank'
  end
end