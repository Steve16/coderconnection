class AddAttachmentAvatarToProposals < ActiveRecord::Migration
  def self.up
    change_table :proposals do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :proposals, :avatar
  end
end
