require "sinatra"
#Default file paths
# set :root , File.dirname(__FILE_)
# set :public_folder  , setting.root + "/public"
# set :view , setting.root + "view"

Dir[settings.root + "/classes/*.rb"].each { |file| require file }

before do
    @user = User.new
    @user.username = 'Ravi'
end

get '/username' do
    "Username: #{@user.username}"
end

get "/welcome" do
  "Welcome Page"
end

get "/home/health-check" do
  output = "<%= Time.now.utc %>"
  erb output
end

get "/" do
  #default it check dateTime file in views folder
  erb :dateTime
end

get '/showArray' do
    erb :list_Student
end

get '/health-check' do
  "#{Time.now}"
end
