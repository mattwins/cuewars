class Player < ActiveRecord::Base
  has_and_belongs_to_many :leagues
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessible :email, :password, :password_confirmation
end
