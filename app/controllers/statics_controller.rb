class StaticsController < ApplicationController

def login
  if logged_in?
    return redirect_to user_path(session[:user_id])
  end
  render layout: false
end

def home
  if !user_exist?
    logout
  end
    render layout: false
end

end
