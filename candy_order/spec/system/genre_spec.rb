require 'rails_helper'

describe 'ジャンル新規投稿のテスト' do
  let(:admin) { create(:admin) }
  let(:genre) { create(:genre) }
  before do
    visit  new_admin_session_path
    fill_in 'admin[email]', with: admin.email
    fill_in 'admin[password]', with: admin.password
    click_button 'ログイン'
    visit  admin_genres_path(admin, genre)
  end
  describe '表示のテスト' do
    context '新規投稿画面' do
      before do
        visit admin_genres_path(admin, genre)
      end
      it 'ジャンル名フォームが表示される' do
        expect(page).to have_field 'genre[name]'
      end
      it '登録するボタンが表示される' do
        expect(page).to have_button '登録する'
      end
    end
  end
  describe '編集のテスト' do
    context '編集画面への遷移' do
      it '遷移できる' do
        visit  edit_admin_genre_path(admin, genre)
         eq('/admin/' + '/genres/' + genre.id.to_s + '/edit')
      end
    end
  end
end