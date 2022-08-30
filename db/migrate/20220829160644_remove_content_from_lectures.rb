class RemoveContentFromLectures < ActiveRecord::Migration[7.0]
  def change
    remove_column :lectures, :content, :text
  end
end
