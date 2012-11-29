class AddAttachmentImageToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :posts, :logo
  end
end
