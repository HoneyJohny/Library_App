class Articlestud < ApplicationRecord
  has_one :article
  validates :title, presence: true,
                    length: { minimum: 5 }
end