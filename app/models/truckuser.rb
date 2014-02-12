class Truckuser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :city, :email, :password, :password_confirmation, :remember_me, :truckname, :state, :zipcode, :ownerfirstname, :ownerlastname, :address
end
