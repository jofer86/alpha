class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum:5, maximum:30}

end