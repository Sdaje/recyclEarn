class AddValidationToRewards < ActiveRecord::Migration[7.0]
  def change
    add_column :rewards, :validation, :boolean
  end
end
