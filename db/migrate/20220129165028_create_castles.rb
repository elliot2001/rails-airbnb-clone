class CreateCastles < ActiveRecord::Migration[6.0]
  def change
    create_table :castles do |t|
      t.string :address
      t.string :title
      t.integer :price
      t.string :description
      t.integer :max_capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
