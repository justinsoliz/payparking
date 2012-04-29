class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :minutes

      t.timestamps
    end
  end
end
