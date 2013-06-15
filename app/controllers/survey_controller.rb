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

get '/surveys/:id/results' do
  @survey = Survey.find(params[:id])
  creator = @survey.user
  redirect '/' unless creator == current_user
  erb :showresults
end





