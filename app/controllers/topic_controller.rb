require_relative 'application_controller'

class TopicController < ApplicationController
  before do
    if request.path_info.start_with?('/apis/v1/topics')
      validate_jwt
    end
  end
  
  get '/apis/v1/topics' do
    Topic.all.to_a.to_json
  end

  get '/apis/v1/topics/:id' do
    Topic[params[:id]].to_json
  end
end