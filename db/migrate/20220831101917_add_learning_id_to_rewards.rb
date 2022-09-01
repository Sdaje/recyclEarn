class AddLearningIdToRewards < ActiveRecord::Migration[7.0]
  def change
    add_reference :rewards, :learning, null: false, foreign_key: true
  end
end
