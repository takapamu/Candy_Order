require 'rails_helper'

describe '商品新規投稿のテスト' do
  let(:admin) { create(:admin) }
  let(:product) { create(:product) }
  before do
    visit  new_admin_session_path
    fill_in 'admin[email]', with: admin.email
    fill_in 'admin[password]', with: admin.password
    click_button 'ログイン'
    visit  admin_products_path(admin, product)
  end
  describe '新地投稿のテスト' do
    context '新規投稿画面' do
       it '遷移できる' do
        visit  new_admin_product_path(admin, product)
         eq('/admin/' + '/products/' + product.id.to_s + '/new')
      end
       context '商品新規投稿画面' do
      before do
        visit new_admin_product_path(admin, product)
      end
      it '商品名画像が表示される' do
        expect(page).to have_field 'product[image]'
      end
      it '商品名フォームが表示される' do
        expect(page).to have_field 'product[product_name]'
      end
      it '商品説明フォームが表示される' do
        expect(page).to have_field 'product[product_introduction]'
      end
      it '製造元フォームが表示される' do
        expect(page).to have_field 'product[product_company]'
      end
      it 'ジャンルフォームが表示される' do
        expect(page).to have_field 'product[genre_id]'
      end
      it '商品価格フォームが表示される' do
        expect(page).to have_field 'product[product_price]'
      end
      it '登録するボタンが表示される' do
        expect(page).to have_button '登録する'
      end
    end
   end
  end
  
  describe '編集のテスト' do
    context '編集画面への遷移' do
      it '遷移できる' do
        visit  edit_admin_product_path(admin, product)
         eq('/admin/' + '/products/' + product.id.to_s + '/edit')
      end
      context '商品編集画面' do
      before do
        visit edit_admin_product_path(admin, product)
      end
      it '商品名画像が表示される' do
        expect(page).to have_field 'product[image]'
      end
      it '商品名フォームが表示される' do
        expect(page).to have_field 'product[product_name]'
      end
      it '商品説明フォームが表示される' do
        expect(page).to have_field 'product[product_introduction]'
      end
      it '製造元フォームが表示される' do
        expect(page).to have_field 'product[product_company]'
      end
      it 'ジャンルフォームが表示される' do
        expect(page).to have_field 'product[genre_id]'
      end
      it '商品価格フォームが表示される' do
        expect(page).to have_field 'product[product_price]'
      end
      it '更新するボタンが表示される' do
        expect(page).to have_button '更新する'
      end
    end
   end
  end
  describe '表示のテスト' do
    context '詳細画面への遷移' do
      it '遷移できる' do
        visit  admin_product_path(admin, product)
         eq('/admin/' + '/products/' + product.id.to_s)
      end
    end
   end
   describe '表示のテスト' do
    context '一覧画面への遷移' do
      it '遷移できる' do
        visit  admin_products_path(admin, product)
         eq('/admin/' + '/products/')
      end
    end
   end
end