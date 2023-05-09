class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false}
    validates :password, presence: true, length: { minimum: 6}, confirmation: true
    validates :password_confirmation, presence: true

    def email=(email)
      if email.present?
        super(email.downcase.strip)
      else super(email)
      end
      end
      def self.authenticate_with_credentials(email, password)
        user = User.find_by(email: email.downcase.strip)
        if user && user.authenticate(password)
          return user
        else
          nil
        end
      end
    end
