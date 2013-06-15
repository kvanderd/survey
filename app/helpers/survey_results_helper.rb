helpers do 


  def aggregate_results(completed_survey, choice)
    selected = 0
    completed_survey.each do |survey|
      survey.responses.each do |response|
        if response.choice_id == choice.id
          selected += 1
        end
      end
    end
    return selected
  end



  
end