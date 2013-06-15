class Response < ActiveRecord::Base
  belongs_to :choice
  has_many :completed_surveys
  has_many :users, :through => :completed_surveys

  # Remember to create a migration!
end
