require 'rails_helper'
 RSpec.describe Waycomment, type: :model do
  before do
    @waycomment = FactoryBot.build(:waycomment)
  end
  describe 'コメントの登録' do
    context 'コメントが投稿できる時' do
     it 'textが存在すれば登録できること' do
      expect(@waycomment).to be_valid
     end
    end
    context 'コメントが投稿できない時' do
      it 'textが空では登録できないこと' do
        @waycomment.text = ''
        @waycomment.valid?
        expect(@waycomment.errors.full_messages).to include "Wayを入力してください", "Userを入力してください"
      end
     end
  end
  
  end