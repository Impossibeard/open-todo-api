class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password

  has_many :lists

  def username
    object.username
  end

  def password
    object.password
  end
end
