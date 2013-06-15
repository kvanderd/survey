class CompletedSurvey < ActiveRecord::Base
  belongs_to :user
  has_many :responses
  belongs_to :survey
end
