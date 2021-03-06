class User < ActiveRecord::Base
	#This takes care of authentication and verification
    has_secure_password
     
    #Downcase Email before saving, Just in case
    before_save { self.email = email.downcase }
    
    #Regular Expression to validate Email
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    #Change these as per your requirement
    validates :name, presence: true, length: { maximum: 100 }
    validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: true, length: { minimum: 6 }
    validates :password, length: { minimum: 6 }

    def self.authenticate_user(email, password)
        user = find_by(email: email)
        if user && user.authenticate(password)
           user
        else
           nil
        end
    end
end
