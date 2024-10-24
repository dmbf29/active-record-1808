class AddInfoToRestaurants < ActiveRecord::Migration[7.0]
  # add_column :table_name, :column_name, :data_type, options
  def change
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end
