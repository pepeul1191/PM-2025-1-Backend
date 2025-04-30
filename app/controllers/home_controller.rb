require_relative 'application_controller'

class HomeController < ApplicationController
  get '/' do
    puts format_date(Time.now)
    erb :'home/index', layout: :'layouts/blank'
  end
end