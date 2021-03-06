require 'rails_helper'
 RSpec.describe Waycomment, type: :model do
  before do
    @waycomment = FactoryBot.build(:waycomment)
    sleep 0.1
  end
  describe 'コメントの登録' do
    context 'コメントが投稿できる時' do
     it 'コメントが存在すれば登録できること' do
      expect(@waycomment).to be_valid
     end
    end
    context 'コメントが投稿できない時' do
      it 'コメントが空では登録できないこと' do
        @waycomment.text = ''
        @waycomment.valid?
        expect(@waycomment.errors.full_messages).to include "コメントを入力してください"
      end
     end
  end
  
  end