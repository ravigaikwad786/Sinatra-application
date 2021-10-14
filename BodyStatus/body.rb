require 'sinatra'

get '/foo' do
    status 418
    headers \
     "Allow" => "BREW, POST, GET, PROPFIND, WHEN" ,
     "Refresh" => "Refresh: 20; https://ietf.org/rfc/rfc2324.txt"

    body "Everything is fine"
end

