
class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\w+@\w+\.{1}[a-zA-Z]{2,}/, message: "Must be a valid email address"}
    # Validação recusando email
    # validates :password_digest, presence: true

end
