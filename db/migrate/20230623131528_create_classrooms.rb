class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.integer :number, null: false
      t.string :address

      t.timestamps
    end
    add_index :classrooms, [:number, :address], unique: true
  end
end
