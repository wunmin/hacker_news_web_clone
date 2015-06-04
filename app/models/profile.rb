class Profile < ActiveRecord::Base
  belongs_to :user

  validates :username, :password,:name, :email, :dob, presence: true
end