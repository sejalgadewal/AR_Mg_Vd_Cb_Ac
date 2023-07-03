class Company < ApplicationRecord
    has_many :employs
    after_touch :log_when_employs_or_company_touched

    private
        def log_when_employs_or_company_touched
            puts 'Employ/Company was touched'
        end
end
