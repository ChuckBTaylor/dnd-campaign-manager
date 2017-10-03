module ApplicationHelper
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    User.find(session[:user_id])
  end

  def recent_character
    Character.find(session[:recent_character])
  end
  
end
