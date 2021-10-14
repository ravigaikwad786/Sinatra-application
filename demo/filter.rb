require 'sinatra'

before do 
    @note ='Hi!'
    request.path_info ='foo/bar/baz'
end

get '/foo/*' do
    @note
    params['splat']
end

after do
    puts response.status
end