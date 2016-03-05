class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :permissions

  has_many :items

  def title
    object.title
  end

  def permissions
    object.permissions
  end
end
