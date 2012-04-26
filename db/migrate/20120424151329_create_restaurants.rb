class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :type
      t.string :name

      t.timestamps
    end
    change_table :restaurants do |t|
	  t.rename :type, :cuisine
	end
  end
end
