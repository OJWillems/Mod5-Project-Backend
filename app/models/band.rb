class Band < ApplicationRecord
  has_many :favorites
  has_many :listeners, through: :favorites

  has_many :questions
  has_many :answers
end
