require 'sinatra'


set :foo => 'bar' , :baz => Proc.new { "Hellow" + foo}
#set :baz , Proc.new { "Hellow" + foo }

get '/baz' do
    "Baz is set to " + settings.baz
    #halt 'Error'
end