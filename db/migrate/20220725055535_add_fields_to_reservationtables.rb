class AddFieldsToReservationtables < ActiveRecord::Migration[7.0]
  def change
    add_column :reservationtables, :rsvptime, :datetime
  end
end
