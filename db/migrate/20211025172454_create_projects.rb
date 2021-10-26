class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :screenshot
      t.integer :student_id
      t.timestamps
    end
  end
end
