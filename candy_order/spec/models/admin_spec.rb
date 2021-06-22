require 'rails_helper'

describe Admin do
  describe '#session' do
    it '管理者ログイン' do
      admin = build(:admin)
      admin.valid?
      expect(admin).to be_valid
    end
  
  it "名前バリデーション" do
    admin = build(:admin,email: nil)
    admin.valid?
    expect(admin.errors[:email]).to include("を入力してください") #日本語で書く
  end
  
  it "パスワードバリデーション" do
    admin = build(:admin,password: nil)
    admin.valid?
    expect(admin.errors[:password]).to include("を入力してください") 
  end
  
 end
end