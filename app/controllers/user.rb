post '/login' do
  p params
   user = User.find_by_email(params[:user][:email])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end
end

post '/signup' do
  user = User.create(params[:user])

  if user.valid?
    session[:user_id] = user.id
    redirect '/'
  else
    #show errors and stuff, need to edit the redirect on line below
    redirect '/'
  end
end


post '/logout' do 
  session.clear
  redirect "/"
end