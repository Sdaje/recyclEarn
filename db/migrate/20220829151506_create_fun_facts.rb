class CreateFunFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :fun_facts do |t|
      t.string :content

      t.timestamps
    end
  end
end
