#encoding: utf-8
class User < ActiveRecord::Base
  # RELATIONSHIPS
  has_one :client, dependent: :destroy

  # VALIDATIONS
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_presence_of :name, :image, message: "não pode ser branco"
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates_length_of :password, minimum: 6

  # CALLBACKS
  before_save { email.downcase! }

  # BCRYPT
  has_secure_password

  def self.authenticate(email, password)
    user = find_by(email: email).try(:authenticate, password)
  end

end