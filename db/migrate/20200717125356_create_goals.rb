class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.string :color
      t.references :contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
