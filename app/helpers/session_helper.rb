helpers do

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # to display either login form or users surveys on index
  def index_template
    if current_user
    :_display_users_surveys #naming?
  else
      :_login_form #naming?
    end
  end

end