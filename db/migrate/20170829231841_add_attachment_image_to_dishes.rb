class AddAttachmentImageToDishes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :dishes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dishes, :image
  end
end
