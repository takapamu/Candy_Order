require 'rails_helper'

describe '管理者ショップ画面のテスト' do
  let(:admin) { create(:admin) }
  let(:shop) { create(:shop) }
  before do
    visit  new_admin_session_path
    fill_in 'admin[email]', with: admin.email
    fill_in 'admin[password]', with: admin.password
    click_button 'ログイン'
    visit  admin_shops_path(admin, shop)
  end
  describe '表示のテスト' do
    context '一覧画面への遷移' do
      it '遷移できる' do
        visit  admin_shops_path(admin, shop)
         eq('/admin/' + '/shops/')
      end
    end
  end
  describe '表示のテスト' do
    context '詳細画面への遷移' do
      it '遷移できる' do
        visit  admin_shop_path(admin, shop)
         eq('/admin/' + '/shops/' + shop.id.to_s)
      end
    end
  end
end

describe 'マイページのテスト' do
  before do
    @shop = FactoryBot.create(:shop)
  end
  describe '表示のテスト' do
    context '詳細画面への遷移' do
      it '遷移できる' do
        sign_in @shop #ログイン状態を保持
        visit  shop_path(@shop)
      end
    end
  end
  describe '表示のテスト' do
      context '編集画面への遷移' do
        it '遷移できる' do
          sign_in @shop
          visit  edit_shop_path(@shop)
        end
      end
     context '編集画面' do
      before do
        sign_in @shop
        visit edit_shop_path(@shop)
      end
      it '店舗名フォームが表示される' do
        expect(page).to have_field 'shop[name]'
      end
      it '郵便番号フォームが表示される' do
        expect(page).to have_field 'shop[postal_code]'
      end
      it '住所フォームが表示される' do
        expect(page).to have_field 'shop[address]'
      end
      it 'メールアドレスフォームが表示される' do
        expect(page).to have_field 'shop[email]'
      end
      it '電話番号フォームが表示される' do
        expect(page).to have_field 'shop[telephone_number]'
      end
      it '更新するボタンが表示される' do
        expect(page).to have_button '編集内容を保存'
      end
    end
  end
end
