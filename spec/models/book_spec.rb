require 'rails_helper'

describe Book, type: :model do
  subject(:book) do
    Book.new(
      genre: genre, author: author, image: image, title: title,
      publisher: publisher, year: year
    )
  end

  let(:genre) { Faker::Book.genre }
  let(:author) { Faker::Book.author }
  let(:image) { Faker::Internet.url }
  let(:title) { Faker::Book.title }
  let(:publisher) { Faker::Book.publisher }
  let(:year) { Faker::Number.between(1975, 2018) }

  describe '#create' do
    it do
      is_expected.to be_valid
    end

    context 'when the genre is nil' do
      let(:genre) { nil }

      it do
        is_expected.to be_invalid
      end
    end

    context 'when the author is nil' do
      let(:author) { nil }

      it do
        is_expected.to be_invalid
      end
    end
  end
end
