require 'sinatra/base'

class ApplicationController < Sinatra::Base
  # sinatra configs
  set :views, File.expand_path('../../../views', __FILE__)
  set :public_folder, File.expand_path('../../../public', __FILE__)
  # load application helper(globally)
  helpers ApplicationHelper
end