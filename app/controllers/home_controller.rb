require_relative 'application_controller'

class HomeController < ApplicationController
  get '/' do
    [{ id: 1, name: 'Pepe' }, { id: 2, name: 'Lima' }].to_json
  end
end