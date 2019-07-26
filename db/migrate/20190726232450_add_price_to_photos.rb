class AddPriceToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :price, :decimal, precision: 5, scale: 2
  end
end
