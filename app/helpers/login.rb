helpers do

  def current_user
    session[:id]
  end

  def user_name
    User.find(current_user).name
  end

end
