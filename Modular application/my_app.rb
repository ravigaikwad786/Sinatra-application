require 'sinatra/base'

class MyApp < Sinatra::Base

    get '/' do
        "#{Time.now}"
    end


run!  if app_file == $0
end