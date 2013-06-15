require 'bcrypt'

class User < ActiveRecord::Base

  has_many :surveys
  has_many :completed_surveys
  has_many :responses, :through => :completed_surveys


  validates_uniqueness_of :email
  validates_presence_of :email
  
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end
  
  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(params)
    @user = self.find_by_username(params[:email])
    @user && (@user.password == params[:password]) ? @user : false
  end
end



