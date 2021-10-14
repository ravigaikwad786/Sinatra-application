require 'sinatra'
require 'securerandom'
enable :sessions

set :session_secret , ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

get '/' do
    "value=" << session[:value].inspect
end

get '/:value' do
    session[:value] = params[:value]
end

get '/session' do
    session_secret
end