class Truckuser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :avatar, :city, :email, :password, :password_confirmation, :remember_me, :truckname, :state, :zipcode, :ownerfirstname, :ownerlastname, :address, :datetime, :category, :description, :profile_id, :latitude, :longitude

  has_attached_file :avatar, :styles => { :small => "200x200", :semismall => "250x250", :medium => "300x300>", :large => "400x400", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  before_save :create_unique_profile_id

  def create_unique_profile_id
    while self.class.exists?(:profile_id => profile_id)
      self.profile_id=SecureRandom.base64(8)
    end
  end

  def full_address
    [address, city, state, zipcode].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode



end
