helpers do

  def current_user
    session[:id]
  end

  def user_name
    session[:name]
  end

end
