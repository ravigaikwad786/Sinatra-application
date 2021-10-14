require 'sinatra'

get '/' do
	output="hellow"
	output << "<br />"
	output << "<a href=\"/goodbye\">Leave</a>"
end

get '/goodbye' do
	"goodbye"
end

get '/about' do
	output = "<h1>Output</h1>"
end

get '/form' do
	form = '<form action="/form" method="post" >'
	form << '<input type="submit" value="Submit" />'
	form << '</form>'
end

post '/form' do
		"thank you for submiting form"
end

get '/company' do
	subject = params[:splat].first
	"splat is #{subject}"
end

get '/about1' do
	redirect '/company/about'
end


get '/company/about' do
	"Thise is first sinatra application"
end



get '/product/:id' do
	"Product id is #{params[:id]}"
end