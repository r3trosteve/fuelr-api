class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.time :start_time
      t.time :end_time
      t.string :day_of_week
      t.integer :capacity
      t.references :product, index: true

      t.timestamps
    end
  end
end
