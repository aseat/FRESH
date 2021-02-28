require 'rails_helper'
 RSpec.describe Answer, type: :model do
  before do
    @answer = FactoryBot.build(:answer)
    sleep 0.1
  end
   describe 'Q&Aの登録' do
    context 'Q&Aが登録できる時' do
     it 'category_id,title,question,imageが存在すれば登録できること' do
      expect(@answer).to be_valid
     end

     it 'imageが空でも登録できること' do
      @answer.image = nil
      expect(@answer).to be_valid
     end
    end

    context 'Q&Aが登録できない時' do
      it 'category_idは選択しないと登録できないこと' do
        @answer.category_id = 1
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Categoryを選択してください"
      end
      
      it 'titleが空でも登録できること' do
        @answer.title = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Titleを入力してください"
      end

      it 'questionが空でも登録できること' do
        @answer.question = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Questionを入力してください"
      end
      
    end
  end
end