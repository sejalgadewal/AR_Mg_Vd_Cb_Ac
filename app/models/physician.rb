class Physician < ApplicationRecord
    has_many :appointmeeents
    has_many :patients, through: :appointmeeents
end
