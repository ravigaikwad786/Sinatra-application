require 'sinatra'

get '/guess/:who' do
    pass unless params[:who] == 'Ravi'.capitalize
    "You Got me...!!"
end

get '/guess/*' do
    "You miss me...!"
end