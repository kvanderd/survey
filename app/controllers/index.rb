post '/login' do
  p params
   user = User.find_or_create_by_email(params)
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end


post '/logout' do 
  session.clear
  redirect "/"
end
