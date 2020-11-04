class Menue < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :name, :ingridients, :description, :image_url, presence: true
    validates :name, uniqueness: true
    validates :image_url, allow_blank: true, format: {
        with:   %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }
end
