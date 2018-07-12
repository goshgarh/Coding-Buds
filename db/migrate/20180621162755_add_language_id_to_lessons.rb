class AddLanguageIdToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :language_id, :integer
  end
end
