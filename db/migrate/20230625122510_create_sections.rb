class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.references :teacher_subject, null: false, foreign_key: true
      t.string :classroom, null: false
      t.integer :start_time, null: false
      t.integer :duration, null: false
      t.string :days_of_week

      t.timestamps
    end
  end
end
