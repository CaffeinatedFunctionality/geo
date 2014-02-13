class Truckuser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :city, :email, :password, :password_confirmation, :remember_me, :truckname, :state, :zipcode, :ownerfirstname, :ownerlastname, :address, :datetime, :category, :description, :profile_id

  before_save :create_unique_profile_id

  def create_unique_profile_id
    while self.class.exists?(:profile_id => profile_id)
      self.profile_id=SecureRandom.base64(8)
    end
  end

end
