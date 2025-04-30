class QuestionController < ApplicationController
  get '/apis/v1/questions' do
    [{ id: 1, name: 'Pepe' }, { id: 2, name: 'Lima' }].to_json
  end

  get '/question' do
    erb :'question/index', layout: :'layouts/blank'
  end
end