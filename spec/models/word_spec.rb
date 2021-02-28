require 'rails_helper'
 RSpec.describe Word, type: :model do
  before do
    @word = FactoryBot.build(:word)
    sleep 0.1
  end
  describe '単語の登録' do
    context '単語登録できる時' do
     it 'word,yomi,mean,imageが存在すれば登録できること' do
      expect(@word).to be_valid
     end
     it 'imageが空でも登録できること' do
      @word.image = nil
      expect(@word).to be_valid
     end
     
     it 'yomiは全角カタカナで登録できる' do
      @word.yomi = 'ミ'
      expect(@word).to be_valid
     end

     it 'yomiはひらがなで登録できる' do
      @word.yomi = 'あ'
      expect(@word).to be_valid
    end

    end
    context '単語登録できない時' do
    it 'wordが空では登録できない' do
      @word.word = nil
      @word.valid?
      expect(@word.errors.full_messages).to include "Wordを入力してください"
    end

    it 'yomiが空では登録できない' do
      @word.yomi = nil
      @word.valid?
      expect(@word.errors.full_messages).to include "Yomiを入力してください"
    end

    it 'yomiは英字では登録できない' do
      @word.yomi = 'ssss'
      @word.valid?
      expect(@word.errors.full_messages).to include "Yomiはひらがな、カタカナ(全角)で入力してください"
    end

    it 'yomiは半角数字では登録できない' do
      @word.yomi = '2222'
      @word.valid?
      expect(@word.errors.full_messages).to include "Yomiはひらがな、カタカナ(全角)で入力してください"
    end

    it 'yomiは全角数字では登録できない' do
      @word.yomi = '２９'
      @word.valid?
      expect(@word.errors.full_messages).to include "Yomiはひらがな、カタカナ(全角)で入力してください"
    end

    it 'meanが空では登録できない' do
      @word.mean = nil
      @word.valid?
      expect(@word.errors.full_messages).to include "Meanを入力してください"
    end
   
    it 'yomiは全角カタカナで登録できない' do
      @word.yomi = 'ｱｲｳｴｵｶｷｸｹｺｻｼｽ'
      @word.valid?
      expect(@word.errors.full_messages).to include "Yomiはひらがな、カタカナ(全角)で入力してください"
     end

    end
 end
end