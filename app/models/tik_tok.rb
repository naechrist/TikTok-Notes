class TikTok < ApplicationRecord
    belong_to :user
    belong_to :category

    validates :description, presence: true

    def self.search(search)
        where("description LIKE ? OR link LIKE ?", "%#{search}%", "%#{search}%") 
      end
end
