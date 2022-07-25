class Reservationtable < ApplicationRecord
    validates  :people, numericality: {greater_than: 0}
    validates :people, :name, :phone, :rsvptime, presence:true
    validates :phone
end
