require 'rails_helper'
 RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー情報の登録' do
    context 'ユーザー新規登録できない時' do
     it 'nickname,password,password_confirmation,email,textが存在すれば登録できること' do
      expect(@user).to be_valid
     end
     it 'imageがからでも登録できること' do
      @user.image = nil
      expect(@user).to be_valid
    end
  end

  describe 'ユーザー新規登録できない時' do
    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Nicknameを入力してください"
    end
    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Emailを入力してください"
    end
    it 'emailには@が含まれていないと登録できないこと' do
      @user.email = 'yosoro'
      @user.valid?
      expect(@user.errors.full_messages).to include('Emailは不正な値です')
    end
    it 'textが空では登録できない' do
      @user.text = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Textを入力してください"
    end
    it 'passwordが半角英数字5文字以下であれば登録できないこと' do
      @user.password = '00000'
      @user.password_confirmation = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include('Passwordは6文字以上で入力してください')
    end

    it 'passwordとpassword_confirmationが不一致では登録できないこと' do
      @user.password = '000000a1'
      @user.password_confirmation = '000000a'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Emailはすでに存在します')
    end
   end
 end
 end