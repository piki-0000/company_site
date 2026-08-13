class Contact < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, length: { maximum: 20 }, allow_blank: true
  validates :company, length: { maximum: 100 }, allow_blank: true
  validates :message, presence: true, length: { minimum: 10, maximum: 2000 }
end