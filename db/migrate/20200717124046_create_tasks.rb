class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :done
      t.boolean :monthly
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
