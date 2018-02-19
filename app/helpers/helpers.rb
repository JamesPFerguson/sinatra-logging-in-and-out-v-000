class Helpers

  def self.current_user
    @user = User.find_by(email: params["email"], password: params["password"])
  end

  def self.is_logged_in?
    current_user.id = session[:id] ? true : false
  end

end
