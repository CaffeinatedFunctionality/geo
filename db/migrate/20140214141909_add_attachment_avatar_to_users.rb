class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :truckusers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :truckusers, :avatar
  end
end
