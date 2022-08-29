class CreateInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :interests do |t|
      t.string :address
      t.string :website
      t.integer :category

      t.timestamps
    end
  end
end
