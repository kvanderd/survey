get '/surveys/new' do
  erb :surveynew
end

post '/surveys/new' do
  submit_data(params)
  redirect '/'
end

get '/surveys/all' do
  @surveys = Survey.all
  erb :allsurveys
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  user = current_user
  redirect '/gtfo' if CompletedSurvey.find_by_survey_id_and_user_id(@survey.id, user.id)
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

get '/gtfo' do

  erb :gtfo
end




