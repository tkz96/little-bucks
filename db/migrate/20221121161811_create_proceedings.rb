class CreateProceedings < ActiveRecord::Migration[7.0]
  def change
    create_table :proceedings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
