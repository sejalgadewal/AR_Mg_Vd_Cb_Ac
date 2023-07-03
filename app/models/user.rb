# class MyValidator < ActiveModel::Validator
#     def validate(record)
#         unless record.name.start_with? 'X'
#             record.errors.add :name, "Need a name starting with X please!"
#         end
#     end
# end


 class User < ApplicationRecord
    # class User
     # include ActiveModel::Validations
     # validates_with MyValidator

    # validates :name, presence: true, length: {minimum: 4}
    # validates :email, presence: true, confirmation: true
#    validates :email_confirmation, presence: true
#     validates :email, confirmation: {case_sensitive: true}
    validates :age, numericality: {message: "%{value} seems wrong "}
    
    validates :email, uniqueness: {
         message: ->(object, data) do
             "Hey #{object.name}, #{data[:value]} is already taken."
         end
     }

    # with_options if: :is_admin? do |admin|
    #     admin.validates :email, presence: true
    #     admin.validates :name, length:{minimum: 4}
    # end


    validates :name,:email, presence:true
    
    # before_create do
    #     self.name=email.capitalize if name.blank?
    # end
    
     before_validation :ensure_name_has_a_value
    
     private
         def ensure_name_has_a_value
             if name.nil?
                 self.name = email unless email.blank?
             end
        end
end