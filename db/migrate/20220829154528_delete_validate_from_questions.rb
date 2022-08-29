class DeleteValidateFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :validate, :boolean
  end
end
