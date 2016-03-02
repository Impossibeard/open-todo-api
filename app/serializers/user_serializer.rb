class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password

  has_many :lists

  def username
    object.username
  end

  def email
    object.email
  end

  def password
    object.password
  end
end
