helpers do

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def index_template
    if current_user
      erb :_display_users_surveys, :layout => false
    else
      erb :_login_form, :layout => false
    end
  end

end