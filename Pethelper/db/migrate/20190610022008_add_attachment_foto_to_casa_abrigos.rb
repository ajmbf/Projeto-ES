class AddAttachmentFotoToCasaAbrigos < ActiveRecord::Migration
  def self.up
    change_table :casa_abrigos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :casa_abrigos, :foto
  end
end
