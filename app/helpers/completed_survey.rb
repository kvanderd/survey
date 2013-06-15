helpers do
  def submit_choices(params)

    params.each do |key, value|
      if key == "survey_id"
        @complete = CompletedSurvey.create(survey_id: value.to_i, user_id: current_user.id)
      else
        Response.create(completed_survey_id: @complete.id, choice_id: value.to_i)
      end
    end
  end
end