class ListSerializer < ActiveModel::Serializer
  attributes :id, :title

  def title
    object.title
  end
end
