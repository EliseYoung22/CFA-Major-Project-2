class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :slug

      t.timestamps
    end
    add_index :topics, :slug, unique: true
  end
end
