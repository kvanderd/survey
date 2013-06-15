helpers do

  def submit_data(params)
    #foo ={"title"=>"ninja", "question1"=>["wtf", "stipid", "shit"], "question2 = ["wtf","dasf","adsf"}
    # p params

    params.each do |key,value|
      if key == "title"
        @survey = Survey.create(title: value) 
        @survey.user = current_user
        @survey.save
      else
       value.each do |element|
        element.each do |key, value|
          if key == "question"
            @question = Question.create(question_text: value)
            @survey.questions << @question
          else
            value.each do |choice|
              @question.choices << Choice.create(choice_text: choice)
            end
          end
        end
      end
    end
  end
end
end




 # question = Question.create(:question_text => value[0])

 #        @survey.questions << question  #why does this not need saving
 #        p @survey
 #        value[1..-1].each do |choice|
 #          question.choices << Choice.create(:choice_text => choice) #ditto
 #        end