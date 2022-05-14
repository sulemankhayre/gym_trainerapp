class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :product
      t.string :description
      t.string :location
      t.string :length
      t.float :cost
      t.date :date
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
