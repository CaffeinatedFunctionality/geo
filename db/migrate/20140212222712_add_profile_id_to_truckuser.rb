class AddProfileIdToTruckuser < ActiveRecord::Migration
  def change
    add_column :truckusers, :profile_id, :integer
  end
end
