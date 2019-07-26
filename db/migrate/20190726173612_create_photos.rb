class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end
end
