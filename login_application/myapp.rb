require 'sinatra/base'

class MyApp < Sinatra::Base 
    use LoginScreen

    before do
        unless session['user_name']
            halt "Access denied, please <a href='/login'>login</a>."
        end
    end

   
        get('/') { "Hellow #{session['user_name']}" }
   

end
