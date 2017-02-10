class ChangeDecimalDigits < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :cost, :decimal, precision: 5, scale: 2
  end
end
