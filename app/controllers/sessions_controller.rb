enable :sessions


post '/login' do
  user = User.find_by_name(params[:name])
  session[:user_id] = user.id

  redirect "/"
end

post '/create' do
  user = User.create(name: params[:name])
  session[:user_id] = user.id
  redirect "/"
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/dashboard' do
  @user = current_user
  @notes = @user.notes
  erb :dashboard
end
