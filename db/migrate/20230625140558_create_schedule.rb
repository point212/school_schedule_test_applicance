class CreateSchedule < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :student, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
