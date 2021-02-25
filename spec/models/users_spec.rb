require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'create' do
    before do
      @user = FactoryBot.build(:user)
    end
  describe 'ユーザー新規登録' do
    context 'ユーザー情報の登録ができる場合' do
      it 'password,password_confirmation,nickname,email,textが存在すれば登録できること' do
        expect(@user).to be_valid
      end
   end
   context 'ユーザー情報の登録ができない場合' do
   it 'nicknameが空では登録できない' do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.nickname = ''  # nicknameの値を空にする
      user.valid?
      expect(user.errors.full_messages).to include "Nickname can't be blank"
    end
    it 'emailが空では登録できない' do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.email = ''  # emailの値を空にする
      user.valid?
      expect(user.errors.full_messages).to include "Email can't be blank"
    end
    it 'textが空では登録できない' do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.email = ''  # emailの値を空にする
      user.valid?
      expect(user.errors.full_messages).to include "Email can't be blank"
    end
    it 'passwordが空では登録できない' do
      user = FactoryBot.build(:user)  # Userのインスタンス生成
      user.email = ''  # emailの値を空にする
      user.valid?
      expect(user.errors.full_messages).to include "Email can't be blank"
    end
    it 'emailには@が含まれていないと登録できないこと' do
      @user.email = 'yosoro'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end
    it 'passwordが半角英数字5文字以下であれば登録できないこと' do
      @user.password = '00000'
      @user.password_confirmation = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'passwordとpassword_confirmationが不一致では登録できないこと' do
      @user.password = '000000a1'
      @user.password_confirmation = '000000a'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
end
end