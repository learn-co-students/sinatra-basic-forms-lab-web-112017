require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do   #=>a page that has a form (i.e. index.erb)
    erb :index  #=> if you click the link, it will post to '/new'"
  end

  get "/new" do
    erb :create_puppy  #=>just renders the create_puppy form; this form posts to :create_puppy
  end


  post "/create_puppy" do
    @new_pup = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end



end
