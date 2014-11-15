class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :keywords
      t.integer :max_assignments, default: 1
      t.integer :reward_amount, default: 500
      t.string :question_file

      t.timestamps null: false
    end
  end
end
