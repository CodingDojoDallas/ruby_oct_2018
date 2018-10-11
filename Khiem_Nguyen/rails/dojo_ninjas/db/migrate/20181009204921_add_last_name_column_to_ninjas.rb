class AddLastNameColumnToNinjas < ActiveRecord::Migration
  def change
    add_column :ninjas, :last_name, :string
  end
end
