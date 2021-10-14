require 'sinatra/base'

class LoginScreen < Sinatra::Base
    enable :session

    get('/login') { erb  :login }

    get '/' do
        "Welcome"
    end
    
    post('/login') do
        if params['name'] == 'admin' && params['password'] == 'admin'
          session['user_name'] = params['name']
        else
          redirect '/login'
        end
      end
   

  
run!  if app_file == $0 
end