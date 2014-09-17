#!/usr/bin/env ruby
require 'sinatra'
require 'securerandom'

# Uncomment to activate sessions for services with a web interface. Disabled
# by default because REST APIs don't need them, and we don't want to send extra
# traffic in the form of session tokens.
#set :session_secret, ENV.fetch("SESSION_SECRET", SecureRandom.hex(2))
#enable :sessions

helpers do
  def json_body
    @_body_params ||= MultiJson.load(request.body)
  end
end

get '/' do
  'Hello, world!'
end

get '/ping' do
  'Pong'
end
