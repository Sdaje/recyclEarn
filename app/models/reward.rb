class Reward < ApplicationRecord
  belongs_to :user
  belongs_to :learning

  def achievement
    learning.answers.joins(:option).where(user: user, option: { good: true }).count
  end

  def validation?
    validation
  end
end
