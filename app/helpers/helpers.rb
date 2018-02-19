class Helpers

  def self.current_user
    @user = User.find_by_id(session[:id])
  end

  def self.is_logged_in?
    current_user.id = session[:id] ? true : false
  end

end
