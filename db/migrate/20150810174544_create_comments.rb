class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :title, :null => false
      t.string :slug, :null => false
      t.text :content

      t.timestamps null: false
    end

    add_index :posts, :slug, :unique => true
  end

  def self.down
    drop_table :posts
  end
end
