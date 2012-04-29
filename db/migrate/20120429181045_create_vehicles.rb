class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :year
      t.string :make
      t.string :model
      t.string :license
      t.string :color

      t.timestamps
    end
  end
end
