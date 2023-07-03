class Patient < ApplicationRecord
    has_many :appointmeeents
    has_many :physician, through: :appointmeeents
end
