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
  describe 'イベント新規投稿のテスト' do
     context '新規登録画面への遷移' do
      it '遷移できる' do
        visit  new_admin_event_path(admin, event)
         eq('/admin/' + '/events/' + event.id.to_s + '/new')
      end
    end
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
    context '編集画面' do
      before do
        visit edit_admin_event_path(admin, event)
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
      it '更新するボタンが表示される' do
        expect(page).to have_button '更新する'
      end
    end
  end
  describe '表示のテスト' do
    context '詳細画面への遷移' do
      it '遷移できる' do
        visit  admin_event_path(admin, event)
         eq('/admin/' + '/events/' + event.id.to_s)
      end
    end
   end
   describe '表示のテスト' do
    context '一覧画面への遷移' do
      it '遷移できる' do
        visit  admin_events_path(admin, event)
         eq('/admin/' + '/events/')
      end
    end
   end
end