require 'sinatra'

get '/' do
    output ="<h1>hi</h1>
end



get '/hello/:name' do
    # matches "GET /hello/foo" and "GET /hello/bar"
    # params['name'] is 'foo' or 'bar'
    "Hello #{params['name']}!"
  end
  
  