class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :arrival_date
      t.date :departure
      t.integer :number_of_people
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :castle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
