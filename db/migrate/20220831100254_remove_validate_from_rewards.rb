class RemoveValidateFromRewards < ActiveRecord::Migration[7.0]
  def change
    remove_column :rewards, :validate, :boolean
  end
end
