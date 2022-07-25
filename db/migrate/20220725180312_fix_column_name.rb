class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    change_column:reservationtables, :rsvptime, :datetime
  end
end
