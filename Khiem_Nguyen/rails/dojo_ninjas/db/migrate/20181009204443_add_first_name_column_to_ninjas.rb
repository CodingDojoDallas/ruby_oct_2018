class AddFirstNameColumnToNinjas < ActiveRecord::Migration
  def change
    add_column :ninjas, :first_name, :string
  end
end
