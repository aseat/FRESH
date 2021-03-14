require 'rails_helper'
RSpec.describe Choice, type: :model do
  before do
    @choice = FactoryBot.build(:choice)
    sleep 0.1
  end
  describe '解答内容の登録' do
    context '解答内容が登録できる時' do
      it '解答が存在すれば登録できること' do
        expect(@choice).to be_valid
      end
    end
    context '解答内容が登録できない時' do
      it '解答を選択しなければ登録できないこと' do
        @choice.choose_id = 1
        @choice.valid?
        expect(@choice.errors.full_messages).to include '解答を選択してください'
      end
    end
  end
end
