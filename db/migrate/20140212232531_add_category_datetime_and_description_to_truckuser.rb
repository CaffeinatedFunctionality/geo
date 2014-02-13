class AddCategoryDatetimeAndDescriptionToTruckuser < ActiveRecord::Migration
  def change
    add_column :truckusers, :category, :string
    add_column :truckusers, :description, :string
    add_column :truckusers, :datetime, :datetime
  end
end
