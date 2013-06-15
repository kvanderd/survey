get '/surveys/new' do

  erb :surveynew
end

post '/surveys/new' do
  submit_data(params)
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :showsurvey
end

post '/surveys/completed' do
  p params
  submit_choices(params)
  redirect '/'
end



get '/surveys/:id/creator/:creator_id' do
  @creator = User.find(params[:creator_id])
  redirect '/' unless @creator == current_user
  erb :showresults
end





