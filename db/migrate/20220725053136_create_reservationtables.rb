class CreateReservationtables < ActiveRecord::Migration[7.0]
  def change
    create_table :reservationtables do |t|
      t.integer :people
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
