class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :student_id

      t.timestamps
    end
  end
end
