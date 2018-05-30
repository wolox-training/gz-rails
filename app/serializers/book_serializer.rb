class BookSerializer < ActiveModel::Serializer
  attributes :genre, :author, :image, :title, :publisher, :year

  has_many :rent
end
