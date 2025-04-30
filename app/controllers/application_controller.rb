require 'sinatra/base'

class ApplicationController < Sinatra::Base
  # sinatra configs
  set :views, File.expand_path('../../../views', __FILE__)
  set :public_folder, File.expand_path('../../../public', __FILE__)
  # load application helper(globally)
  helpers ApplicationHelper
  @@connections = []

  get '/ws' do
    if Faye::WebSocket.websocket?(env)
      ws = Faye::WebSocket.new(env)
  
      ws.on :open do |event|
        @@connections << ws
        puts "Cliente conectado (#{@@connections.size})"
      end
  
      ws.on :message do |event|
        data = event.data
        puts "Mensaje recibido: #{data}"
        @@connections.each { |conn| conn.send("Echo: #{data}") }
      end
  
      ws.on :close do |event|
        @@connections.delete(ws)
        puts "Cliente desconectado"
      end
  
      # 👇 DEVUELVE la respuesta que espera Rack
      return ws.rack_response
    else
      halt 400, 'No es una conexión WebSocket'
    end
  end  
end