class Employ < ApplicationRecord
    belongs_to :company, touch :true
    after_touch do
        puts 'An Emplpoy was touched.......'
    end

     validates :name,presence:true

    before_validation :normalize_name, on: :create
    # validates :location, presence:true
  #  after_validation :set_location, on:[:create,:update]
   before_validation :remove_whitespaces
   after_validation :set
   #around_save :around_message_pass
   before_save :before_message_pass

   before_create :create_message
   #around_create :around_message
   after_create :after_message
   after_save :save_message
   before_update :update_method
   
    after_initialize do |employ|
        puts "You have initialized an object!"
    end

    after_find do |employ|
        puts "You have found an object!"
    end
    after_touch do |employ|
        puts "You have touched an object"
      end

   private
        def normalize_name
            self.name=name.downcase.titleize
        end
        def remove_whitespaces
            name.strip!
        end
        def set
            self.Status=errors[:name].empty?
        end
        def around_message_pass
            puts "Around Save Callbacks ......."
        end
        def before_message_pass
            puts "Before Save Callbacks ......."
        end
        def create_message
            self.name=name.upcase
            p "before create query message !!!!!!!!!!!!!!!!!!!!!!"
        end
        def around_message
            p "around create query message !!!!!!!!!!!!!!!!!!!!!!"
        end
        def after_message
            self.Status=name.length
            p "after create query message !!!!!!!!!!!!!!!!!!!!!!"
        end
        def save_message
            p "Saved Successfully........ !!!!!!!!!!!!!!!!!!!!!!"
        end
        def update_method
            p "before update name is - #{Employ.name.first} "
         end
        

        

        # def set_location
        #     self.location=name.query(self)
        # end
    


end
