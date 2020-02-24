require 'rails_helper'

RSpec.describe Api::DiariesController, type: :controller do
  describe "diaries#update action" do
    
    let!(:expected_notes) {'This is a test'}

    it "should update the notes" do
      company = FactoryBot.create(:company)
      diary = FactoryBot.create(:diary, company_id: company.id)
      patch :update, params: { id: diary.id, diary: { notes: expected_notes} }
      diary.reload
      expect(diary.notes).to eq expected_notes
    end

  end

  describe "diaries#create action" do

    let!(:expected_notes) {'This is a test'}

    it "should create both date & notes" do
      company = FactoryBot.create(:company)
      post :create, params: {ticker: company.symbol, diary:
                  {notes: expected_notes}}

      diary = Diary.last
      expect(diary.notes).to eq expected_notes
    end
  end

  describe "diaries#destroy action" do

    it "should delete todo" do
      company = FactoryBot.create(:company)
      diary = FactoryBot.create(:diary, company_id: company.id)
      delete :destroy, params: {id: diary.id}

      diary = Diary.find_by_id(diary.id)
      expect(diary).to eq nil
    end
  end
end
