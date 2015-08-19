module LoginsHelper

  # Logs in the given chef.
  def log_in(chef)
    session[:chef_id] = chef.id
  end

  # Remembers a chef in a persistent session.
  def remember(chef)
    chef.remember
    cookies.permanent.signed[:chef_id] = chef.id
    cookies.permanent[:remember_token] = chef.remember_token
  end

  # Returns the current logged-in chef (if any).
  def current_chef
    @current_chef ||= Chef.find_by(id: session[:user_id])
  end

  # Returns true if the chef is logged in, false otherwise.
  def logged_in?
    !current_chef.nil?
  end

  # Logs out the current chef.
  def log_out
    session.delete(:chef_id)
    @current_chef = nil
  end
end