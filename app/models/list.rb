class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :user, presence: true
  validates :title, presence: true

  after_initialize :default

  def default
    #will set the default value only if it is nil
    self.permissions ||= "public"
  end
end
