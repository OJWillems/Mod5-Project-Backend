class Listener < ApplicationRecord
  has_many :favorites
  has_many :bands, through: :favorites

  has_many :questions
end
