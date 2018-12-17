class Listener < ApplicationRecord
  has_many :favorites
  has_many :bands, through: :favorites
end
