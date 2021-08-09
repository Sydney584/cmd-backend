class CreateMynotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :thankful
      t.string :notes
      t.belongs_to :user, foreign_key: true
    end
  end
end
