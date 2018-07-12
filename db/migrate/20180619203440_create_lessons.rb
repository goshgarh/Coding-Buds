class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.text :syntax
      t.integer :admin_id

      t.timestamps
    end
  end
end
