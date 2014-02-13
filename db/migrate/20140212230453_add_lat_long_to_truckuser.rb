class AddLatLongToTruckuser < ActiveRecord::Migration
  def change
    add_column :truckusers, :latitude, :float
    add_column :truckusers, :longitude, :float
  end
end
