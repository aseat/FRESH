require 'rails_helper'
RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
    sleep 0.1
  end
  describe 'クイズ問題の登録' do
    context 'クイズ問題登録できる時' do
      it 'カテゴリー、問題文、解答、答え、画像が存在すれば登録できること' do
        expect(@question).to be_valid
      end

      it '画像が空でも登録できること' do
        @question.image = nil
        expect(@question).to be_valid
      end
    end

    context 'クイズ問題登録できない時' do
      it 'カテゴリーは選択しないと登録できないこと' do
        @question.category_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include 'カテゴリーを選択してください'
      end

      it '問題文が空でも登録できること' do
        @question.problem = nil
        @question.valid?
        expect(@question.errors.full_messages).to include '問題文を入力してください'
      end

      it '解説が空でも登録できること' do
        @question.commentary = nil
        @question.valid?
        expect(@question.errors.full_messages).to include '解説を入力してください'
      end

      it '答えは選択しないと登録できないこと' do
        @question.answerd_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include '答えを選択してください'
      end
    end
  end
end
