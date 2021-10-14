require 'sinatra'

require_relative('help.rb')

get '/:name' do
    initialise(params['name'])
end

