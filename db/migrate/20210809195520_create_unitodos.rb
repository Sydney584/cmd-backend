class CreateUnitodos < ActiveRecord::Migration[5.2]
  def change
    create_table :unitodos do |t|
      Date
      t.string :day
      t.string :entry1
      t.string :entry2
      t.string :entry3
      t.string :entry4
      t.string :entry5
      t.string :entry6
      t.string :entry7
      t.string :entry8
      t.string :entry9
      t.string :entry10
      t.belongs_to :user, foreign_key: true
    end
  end
end
