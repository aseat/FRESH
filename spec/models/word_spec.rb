require 'rails_helper'
RSpec.describe Word, type: :model do
  before do
    @word = FactoryBot.build(:word)
    sleep 0.1
  end
  describe '単語の登録' do
    context '単語登録できる時' do
      it '用語、画像、読み、画像が存在すれば登録できること' do
        expect(@word).to be_valid
      end
      it '画像が空でも登録できること' do
        @word.image = nil
        expect(@word).to be_valid
      end

      it '読みはひらがなで登録できる' do
        @word.yomi = 'あ'
        expect(@word).to be_valid
      end
    end
    context '単語登録できない時' do
      it '用語が空では登録できない' do
        @word.word = nil
        @word.valid?
        expect(@word.errors.full_messages).to include '用語を入力してください'
      end

      it '読みが空では登録できない' do
        @word.yomi = nil
        @word.valid?
        expect(@word.errors.full_messages).to include '読みはひらがなで入力してください'
      end

      it '読みは英字では登録できない' do
        @word.yomi = 'ssss'
        @word.valid?
        expect(@word.errors.full_messages).to include '読みはひらがなで入力してください'
      end

      it '読みは半角数字では登録できない' do
        @word.yomi = '2222'
        @word.valid?
        expect(@word.errors.full_messages).to include '読みはひらがなで入力してください'
      end

      it '読みは全角数字では登録できない' do
        @word.yomi = '２９'
        @word.valid?
        expect(@word.errors.full_messages).to include '読みはひらがなで入力してください'
      end

      it '意味が空では登録できない' do
        @word.mean = nil
        @word.valid?
        expect(@word.errors.full_messages).to include '意味を入力してください'
      end

      it '読みは半角カタカナで登録できない' do
        @word.yomi = 'ｱｲｳｴｵｶｷｸｹｺｻｼｽ'
        @word.valid?
        expect(@word.errors.full_messages).to include '読みはひらがなで入力してください'
      end

      it '読みは全角カタカナで登録できない' do
        @word.yomi = 'ミ'
        @word.valid?
        expect(@word.errors.full_messages).to include '読みはひらがなで入力してください'
      end
    end
  end
end
