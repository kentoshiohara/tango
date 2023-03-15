require 'rails_helper'

RSpec.describe Vocabulary, type: :model do
  before do
    @vocabulary = FactoryBot.build(:vocabulary)
  end

  describe '単語の登録' do
    context '単語が登録できる場合' do
      it 'title, meaningが存在すれば登録できる' do
        expect(@vocabulary).to be_valid
      end
    end
    context '単語が登録できない場合' do
      it 'titleが空の場合' do
        @vocabulary.title = ''
        @vocabulary.valid?
        expect(@vocabulary.errors.full_messages).to include("Title can't be blank")
      end
      it 'meaningが空の場合' do
        @vocabulary.meaning = ''
        @vocabulary.valid?
        expect(@vocabulary.errors.full_messages).to include("Meaning can't be blank")
      end
      it 'categoryが紐づいていなければ単語を登録できない' do
        @vocabulary.category = nil
        @vocabulary.valid?
        expect(@vocabulary.errors.full_messages).to include("Category must exist")
      end
    end
  end
end
