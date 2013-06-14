get '/surveys/:id' do
  
  erb :showsurvey
end

post '/surveys/:id/completed' do

  redirect '/'
end

get '/surveys/:id/new' do

  erb :surveynew
end

post '/surveys/:id' do

end

get '/surveys/:id/creator/:creator_id' do
  @creator = User.find(params[:creator_id])
  redirect '/' unless @creator == current_user
  erb :showresults
end



