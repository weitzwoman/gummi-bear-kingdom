class AddBlogTable < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :author, :string
      t.column :content, :string
    end
  end
end
