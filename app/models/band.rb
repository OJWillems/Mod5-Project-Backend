class Band < ApplicationRecord
  has_many :favorites
  has_many :listeners, through: :favorites
end
