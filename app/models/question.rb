class Question < ApplicationRecord
  belongs_to :band
  belongs_to :listener
  has_one :answer
end
