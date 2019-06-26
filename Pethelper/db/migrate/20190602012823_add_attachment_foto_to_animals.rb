class AddAttachmentFotoToAnimals < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :animals, :foto
  end
end
