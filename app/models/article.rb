class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximmum: 50}
    validates :description, presence: true, length: {minimum: 5, maximmum: 1000}
end
