class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :gender
      t.string :city
      t.text :bio
      t.string :interests
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
