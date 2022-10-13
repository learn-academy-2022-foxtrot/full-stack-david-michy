class Blog < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, uniqueness: true, uniqueness: { case_sensitive: false }
  validates :title, length: { minimum: 4 }
  validates :content, length: { minimum: 10 }
end
