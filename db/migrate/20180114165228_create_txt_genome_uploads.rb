class CreateTxtGenomeUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :txt_genome_uploads do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
