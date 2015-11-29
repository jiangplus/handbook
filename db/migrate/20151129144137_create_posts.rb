class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :thumb
      t.string :status
      t.string :title
      t.text :text
      t.timestamps null: false
    end
  end
end
