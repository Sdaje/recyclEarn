class RemoveRewardIdFromLearnings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :learnings, :reward, null: false, foreign_key: true
  end
end
