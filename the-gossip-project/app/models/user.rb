class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  validates :email,
    
    uniqueness: {case_sensitive: false},
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

    validates :first_name,
    uniqueness: {case_sensitive: false},
     format: { with: /\A[A-zA-Z0-9_]{2,20}}\z/, message: "ne doit contenir que des caracteres alphanumerique ou des underscores " }

    validates :last_name,
    uniqueness: {case_sensitive: false},
    format: { with: /\A[A-zA-Z0-9_]{2,20}}\z/, message: "ne doit contenir que des caracteres alphanumerique ou des underscores " }
    
has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "RecipientList"
end
