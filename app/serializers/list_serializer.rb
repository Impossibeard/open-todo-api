class ListSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :items

  def title
    object.title
  end
end
