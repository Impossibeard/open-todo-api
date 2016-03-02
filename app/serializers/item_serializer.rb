class ItemSerializer < ActiveModel::Serializer
  attributes :id, :detail

  belongs_to :list

  def detail
    object.detail
  end
end
