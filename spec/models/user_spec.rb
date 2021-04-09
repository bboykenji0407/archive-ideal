require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context 'ユーザー新規登録できるとき' do
      it 'name,email,age,tell_num,password,password_confirmationが存在すれば新規登録できる' do
        expect(@user).to be_valid
      end
    end
    context 'ユーザー新規登録出来ない時' do
      it 'nameが空だと登録できない' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nameを入力してください")
      end
      it 'emailが空だと登録出来ない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Emailを入力してください")
      end
      it 'passwordが空だと登録出来ない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Passwordを入力してください")
      end
      it 'password_confirmationが空だと登録出来ない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
      end
      it 'ageが空だと登録出来ない' do
        @user.age = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Ageを入力してください")
      end
      it 'ageが全角では登録出来ない' do
        @user.age = '９９'
        @user.valid?
        expect(@user.errors.full_messages).to include("Ageは半角数字、２桁で入力してください")
      end
      it 'ageが１桁または３桁以上では登録出来ない' do
        @user.age = '5' && '789'
        @user.valid?
        expect(@user.errors.full_messages).to include("Ageは半角数字、２桁で入力してください")
      end
      it 'ageが文字では登録出来ない' do
        @user.age = '文字'
        @user.valid?
        expect(@user.errors.full_messages).to include("Ageは半角数字、２桁で入力してください")
      end
      it 'tell_numが空では登録出来ない' do
        @user.tell_num = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Tell numを入力してください")
      end
      it 'tell_numが半角数字でない場合、登録出来ない' do
        @user.tell_num = '０８０１２３４５６７８'
        @user.valid?
        expect(@user.errors.full_messages).to include("Tell numは半角数字、ハイフン無しで11桁以内で入力してください")
      end
      it 'tell_numがハイフンありでは登録出来ない' do
        @user.tell_num = '080-1234-5678'
        @user.valid?
        expect(@user.errors.full_messages).to include("Tell numは半角数字、ハイフン無しで11桁以内で入力してください")
      end
    end
  end
end
