class CreateMywins < ActiveRecord::Migration[5.2]
  def change
    create_table :mywins do |t|
      t.string :text
      t.belongs_to :user, foreign_key: true
    end
  end
end
