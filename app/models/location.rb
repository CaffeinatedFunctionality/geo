class Location < ActiveRecord::Base

  attr_accessible :city, :state, :zipcode, :address, :id, :latitude, :longitude


  def full_address
    [address, city, state, zipcode].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode
end
