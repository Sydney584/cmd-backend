class CreateMytodos < ActiveRecord::Migration[5.2]
  def change
    create_table :mytodos do |t|
      Date
      t.string :day
      t.string :affirmation
      t.boolean :pray
      t.boolean :meditate
      t.boolean :journal
      t.boolean :exercise
      t.boolean :drink_water
      t.string :entry1
      t.string :entry2
      t.string :entry3
      t.string :entry4
      t.string :entry5
      t.string :entry6
      t.integer :tasks_completed
      t.belongs_to :user, foreign_key: true

    end
  end
end
