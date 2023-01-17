class Admin < ApplicationRecord
    has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validate :permitted_email
  def permitted_email
      unless email.match?(/venuspot.admin/)
          errors.add(:permitted_emails, ": Must Have a venuspot Email.")
      end
    end
end
