require_relative 'config/enviroment'
require 'faye/websocket'
require 'thread'
require 'dotenv'

# .env file
Dotenv.load
# websockets
Faye::WebSocket.load_adapter('thin')
# load controllers
use HomeController
use TopicController
use QuestionController
run ApplicationController