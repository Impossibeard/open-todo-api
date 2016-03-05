class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :user, presence: true
  validates :title, presence: true
  validates_inclusion_of :permissions, in: %w( open viewable private ), message: "type '%{value}' is not included in the list"

  after_initialize :default

  def default
    #will set the default value only if it is nil
    self.permissions ||= "open"
  end
end
