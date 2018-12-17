class Favorite < ApplicationRecord
  belongs_to :band
  belongs_to :listener
end
