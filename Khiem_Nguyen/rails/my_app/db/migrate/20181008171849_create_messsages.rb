class CreateMesssages < ActiveRecord::Migration
  def change
    create_table :messsages do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
