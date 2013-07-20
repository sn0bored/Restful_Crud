get '/' do
  if logged_in?
    redirect "/dashboard"
  else
    erb :index
  end
end

