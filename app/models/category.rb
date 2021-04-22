class Category < ApplicationRecord
    has_many :tik_toks

    validates :name, uniqueness: true, presence: true 

    def self.alpha #scope method
        order(name: :asc)
    end 
end
