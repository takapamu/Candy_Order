require 'rails_helper'

describe Event do
  describe '#create' do
    it 'イベント登録' do
      event = build(:event)
      event.valid?
      expect(event).to be_valid
    end
    
    it "タイトルバリデーション" do
    event = build(:event,title: nil)
    event.valid?
    expect(event.errors[:title]).to include("を入力してください") #日本語で書く
   end
   
   it "内容バリデーション" do
    event = build(:event,content: nil)
    event.valid?
    expect(event.errors[:content]).to include("を入力してください") #日本語で書く
   end
   
    it "日にちバリデーション" do
    event = build(:event,start_time: nil)
    event.valid?
    expect(event.errors[:start_time]).to include("を入力してください") #日本語で書く
   end
  end
end