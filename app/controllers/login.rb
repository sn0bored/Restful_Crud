enable :sessions


post '/login' do
  #p params
  @user = User.find_by_name(params[:name])
  session[:id] = @user.id
  @list = []
  @all_notes = Note.all
  @all_notes.each do |note|
    @list << note.description
  end
  erb :login
end

post '/create' do
  User.create(name: params[:name])
  # session[:id] = @user.id
  session[:name] = params[:name]
 erb :login
end

get '/logout' do
  session.clear
  redirect '/'
end


