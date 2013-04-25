class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :description
      t.string :icon_url

      t.timestamps
    end
  end
end
