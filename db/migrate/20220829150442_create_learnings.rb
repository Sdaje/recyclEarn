class CreateLearnings < ActiveRecord::Migration[7.0]
  def change
    create_table :learnings do |t|
      t.string :title
      t.string :topic
      t.string :city
      t.integer :difficulty
      t.integer :penality, default: 5
      t.integer :score
      t.references :reward, null: false, foreign_key: true

      t.timestamps
    end
  end
end
