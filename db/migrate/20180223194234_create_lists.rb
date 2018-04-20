class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
