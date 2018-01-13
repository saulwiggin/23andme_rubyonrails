class AddAttachmentTxtfileToGenomes < ActiveRecord::Migration
  def self.up
    change_table :genomes do |t|
      t.attachment :txtfile
    end
  end

  def self.down
    remove_attachment :genomes, :txtfile
  end
end
