class CreateTcs < ActiveRecord::Migration[5.2]
  def change
    create_table :tcs do |t|
      t.string :tc_id
      t.string :name
      t.string :surname
      t.integer :year

      t.timestamps
    end
  end
end
