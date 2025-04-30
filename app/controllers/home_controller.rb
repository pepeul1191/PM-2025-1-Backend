require_relative 'application_controller'

class HomeController < ApplicationController
  get '/' do
    erb :home
  end
end