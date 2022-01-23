class CreateSleeplogs < ActiveRecord::Migration[6.0]
  def change
    create_table :sleeplogs do |t|
      t.string :night_of_date
      t.string :bedtime
      t.string :approximate_sleep_time
      t.integer :sleep_interrupted
      t.float :sleep_lost_from_interruptions
      t.string :wake_up_time
      t.boolean :ate_spicy
      t.boolean :drank_alcohol
      t.boolean :sleep_meds
      t.references :user, index: true, null: false, foreign_key: true
      t.string :notes

      t.timestamps
    end
  end
end
