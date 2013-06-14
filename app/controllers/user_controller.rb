post '/login' do
  @user = User.authenticate...
  sessions[:user_id] = @user.id if @user
  redirect '/'
end

post '/signup' do
  @user = User.create(params[:user])
  sessions[:user_id] = @user.id
  redirect '/'
end

