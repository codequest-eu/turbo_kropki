class CreateDots < ActiveRecord::Migration[7.0]
  def change
    create_table :dots do |t|
      t.boolean :enabled, null: false, default: false
      t.integer :row, null: false

      t.timestamps
    end
  end
end
