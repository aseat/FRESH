require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー情報の登録' do
    context 'ユーザー新規登録できない時' do
      it 'ニックネーム、パスワード、パスワード(確認)、メールアドレス、自己紹介が存在すれば登録できること' do
        expect(@user).to be_valid
      end
      it '画像が空でも登録できること' do
        @user.image = nil
        expect(@user).to be_valid
      end
    end

    describe 'ユーザー新規登録できない時' do
      it 'ニックネームが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'ニックネームを入力してください'
      end
      it 'メールアドレスが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'メールアドレスを入力してください'
      end
      it 'メールアドレスには@が含まれていないと登録できないこと' do
        @user.email = 'yosoro'
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスは不正な値です')
      end
      it '自己紹介が空では登録できない' do
        @user.text = ''
        @user.valid?
        expect(@user.errors.full_messages).to include '自己紹介を入力してください'
      end
      it 'パスワードが半角英数字5文字以下であれば登録できないこと' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end

      it 'パスワードとパスワード(確認)が不一致では登録できないこと' do
        @user.password = '000000a1'
        @user.password_confirmation = '000000a'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード(確認)とパスワードの入力が一致しません')
      end

      it '重複したメールアドレスが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('メールアドレスはすでに存在します')
      end
    end
  end
end
