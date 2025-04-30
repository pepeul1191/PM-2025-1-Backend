require_relative 'application_controller'

class QuestionController < ApplicationController
  get '/apis/v1/questions' do
    [{ id: 1, name: 'Pepe' }, { id: 2, name: 'Lima' }].to_json
  end
end