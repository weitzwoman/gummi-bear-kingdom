class AddAttributesToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :ingredients, :string
    add_column :products, :image, :string
  end
end
