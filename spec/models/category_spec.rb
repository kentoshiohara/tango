require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @category = FactoryBot.build(:category)
  end

  describe 'カテゴリー（単語帳名）の登録' do
    context 'カテゴリーが登録できる場合' do
      it 'titleが存在すれば登録できる' do
        expect(@category).to be_valid
      end
    end

    context 'カテゴリーが登録できない場合' do
      it 'titleが空の場合登録できない' do
        @category.title = ""
        @category.valid?
        expect(@category.errors.full_messages).to include("Title can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @category.user = nil
        @category.valid?
        expect(@category.errors.full_messages).to include("User must exist")
      end
    end
  end

end
