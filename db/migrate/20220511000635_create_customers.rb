class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
