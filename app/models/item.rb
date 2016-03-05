class Item < ActiveRecord::Base
  belongs_to :list

  validates :list, presence: true
  validates :description, presence: true, length: { minimum: 4 }

end
