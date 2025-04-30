require_relative 'application_controller'

class TopicController < ApplicationController
  get '/apis/v1/topics' do
    puts Topic.all.to_a
    Topic.all.to_a.to_json
  end
end