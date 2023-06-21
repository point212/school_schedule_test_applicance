class CreateTeacherSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_subjects do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.integer :level, null: false

      t.timestamps
    end
    add_index :teacher_subjects, [:teacher_id, :subject_id], unique: true
  end
end
