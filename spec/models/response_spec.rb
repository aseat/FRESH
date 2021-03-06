require 'rails_helper'
 RSpec.describe Response, type: :model do
  before do
    @response = FactoryBot.build(:response)
    sleep 0.1
  end
  describe '回答の登録' do
    context '回答が登録できる時' do
     it '解答が存在すれば登録できること' do
      expect(@response).to be_valid
     end
    end
    context '回答が登録できない時' do
      it '解答が空では登録できないこと' do
        @response.text = ''
        @response.valid?
        expect(@response.errors.full_messages).to include "解答を入力してください"
      end
     end
  end
  
  end