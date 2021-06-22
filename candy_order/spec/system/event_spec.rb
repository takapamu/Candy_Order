require 'rails_helper'

describe 'イベント新規投稿のテスト' do
  let(:admin) { create(:admin) }
  let(:event) { create(:event) }
  before do
    visit  new_admin_session_path
    fill_in 'admin[email]', with: admin.email
    fill_in 'admin[password]', with: admin.password
    click_button 'ログイン'
    visit  admin_events_path(admin, event)
  end
  describe '表示のテスト' do
    context '新規投稿画面' do
      before do
        visit new_admin_event_path(admin, event)
      end
      it 'タイトルフォームが表示される' do
        expect(page).to have_field 'event[title]'
      end
      it '内容フォームが表示される' do
        expect(page).to have_field 'event[content]'
      end
      it '日にちフォームが表示される' do
        expect(page).to have_select('event[start_time(2i)]') #(2i)はmonths 
      end
      it '登録するボタンが表示される' do
        expect(page).to have_button '登録する'
      end
    end
  end
  describe '編集のテスト' do
    context '編集画面への遷移' do
      it '遷移できる' do
        visit  edit_admin_event_path(admin, event)
         eq('/admin/' + '/events/' + event.id.to_s + '/edit')
      end
    end
  end
end