require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
  end

end

# In app.rb build out a GET request to load a home page. The home page should go to the main route /.
