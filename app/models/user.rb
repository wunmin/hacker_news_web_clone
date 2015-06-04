class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :username, :password, :name, :email, :dob, presence: true

  def self.authenticate(username, password)
    @user = User.find_by_username(username)
    byebug
    if @user.nil?
      nil
    elsif @user.password == password
      @user
    else
      nil
    end
  end

end
