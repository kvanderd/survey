get '/surveys/new' do

  erb :surveynew
end

post '/surveys/new' do
  p params
  # submit_data(params)
  # survey = Survey.find_or_create_by_title(params[:title])
  # questions = []
  
end

get '/surveys/:id' do
  
  erb :showsurvey
end

post '/surveys/:id/completed' do

  redirect '/'
end



get '/surveys/:id/creator/:creator_id' do
  @creator = User.find(params[:creator_id])
  redirect '/' unless @creator == current_user
  erb :showresults
end



