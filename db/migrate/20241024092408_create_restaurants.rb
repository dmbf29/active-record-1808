# meal.rb
# class Meal
# A migration is a change to the schema
# Creating a table:
# file convetion -> timestamp_create_table_name.rb
# Adding a column:
# timestamp_add_column_to_table.rb
class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address

      t.timestamps # adds two columns (created_at / updated_at)
    end
  end
end
