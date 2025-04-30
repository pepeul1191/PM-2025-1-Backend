

class HomeController < ApplicationController
  before '/' do
    validate_jwt
  end

  get '/' do
    puts format_date(Time.now)
    puts ENV['APP_TITLE']
    erb :'home/index', layout: :'layouts/blank'
  end
end