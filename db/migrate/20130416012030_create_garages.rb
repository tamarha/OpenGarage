class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :title
      t.text :description
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.date :datetime
      t.integer :status
      t.references :user

      t.timestamps
    end
    add_index :garages, :user_id
  end
end
