class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :description
      t.integer :lesson_id
      t.timestamps
    end
  end
end
