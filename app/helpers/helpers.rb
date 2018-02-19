class Helpers

  def current_user
    User.find_by(email: params["email"], password: params["password"])
  end

  def is_logged_in?
    self.current_user.id = session[:id] ? true : false
  end

end
