class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :slug, :null => false
      t.text :body

      t.timestamps null: false
    end

    add_index :posts, :slug, :unique => true
  end

  def self.down
    drop_table :posts
  end
end
