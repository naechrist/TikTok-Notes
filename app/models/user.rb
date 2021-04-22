class User < ApplicationRecord
    has_many :tik_toks

    has_secure_password 

    validates :usrename, uniqueness: true, presence: true 

    def self.create_by_google_omniauth(auth)
        self.find_or_create_by(username: auth[:info][:email]) do |u|
           u.password = SecureRandom.hex 
        end
    end 
end
