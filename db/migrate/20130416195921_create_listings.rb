class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :type
      t.references :garage

      t.timestamps
    end
    add_index :listings, :type_id
    add_index :listings, :garage_id
  end
end
