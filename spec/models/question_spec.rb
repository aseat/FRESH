require 'rails_helper'
 RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
    sleep 0.1
  end
   describe '試験問題の登録' do
    context '試験問題登録できる時' do
     it 'problem,answerd_id,commentary,category_id,imageが存在すれば登録できること' do
      expect(@question).to be_valid
     end

     it 'imageが空でも登録できること' do
      @question.image = nil
      expect(@question).to be_valid
     end
    end

    context '試験問題登録できない時' do
      it 'category_idは選択しないと登録できないこと' do
        @question.category_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include "Categoryを選択してください"
      end
      
      it 'problemが空でも登録できること' do
        @question.problem = nil
        @question.valid?
        expect(@question.errors.full_messages).to include "Problemを入力してください"
      end

      it 'commentaryが空でも登録できること' do
        @question.commentary = nil
        @question.valid?
        expect(@question.errors.full_messages).to include "Commentaryを入力してください"
      end
      
      it 'answerd_idは選択しないと登録できないこと' do
        @question.answerd_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include "Answerdを選択してください"
      end
    end
  end
end