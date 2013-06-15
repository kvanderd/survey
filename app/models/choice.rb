class Choice < ActiveRecord::Base
  belongs_to :question
  has_one :response
end
