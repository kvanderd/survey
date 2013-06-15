get '/' do
  if current_user
    user = current_user
    @surveys = Survey.where("user_id = ?", user.id)
  end
  erb :index
end
