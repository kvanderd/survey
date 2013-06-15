get '/' do
  if current_user
    user = current_user
    @surveys = Survey.find_by_user_id(user.id)
  end
  erb :index
end
