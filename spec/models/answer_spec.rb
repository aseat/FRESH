require 'rails_helper'
RSpec.describe Answer, type: :model do
  before do
    @answer = FactoryBot.build(:answer)
    sleep 0.1
  end
  describe 'Q&Aの登録' do
    context 'Q&Aが登録できる時' do
      it 'カテゴリー、タイトル、質問、画像が存在すれば登録できること' do
        expect(@answer).to be_valid
      end

      it '画像が空でも登録できること' do
        @answer.image = nil
        expect(@answer).to be_valid
      end
    end

    context 'Q&Aが登録できない時' do
      it 'カテゴリーは選択しないと登録できないこと' do
        @answer.category_id = 1
        @answer.valid?
        expect(@answer.errors.full_messages).to include 'カテゴリーを選択してください'
      end

      it 'タイトルが空でも登録できること' do
        @answer.title = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include 'タイトルを入力してください'
      end

      it '質問が空でも登録できること' do
        @answer.question = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include '質問を入力してください'
      end
    end
  end
end
