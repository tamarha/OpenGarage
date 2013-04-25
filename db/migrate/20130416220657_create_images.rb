class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :url
      t.string :title
      t.references :garage

      t.timestamps
    end
    add_index :images, :garage_id
  end
end
