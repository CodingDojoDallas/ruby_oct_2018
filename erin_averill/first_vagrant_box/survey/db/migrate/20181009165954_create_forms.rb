class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :location
      t.string :favorite_language
      t.text :comment

      t.timestamps null: false
    end
  end
end
