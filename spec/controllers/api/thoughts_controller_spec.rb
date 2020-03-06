require 'rails_helper'

RSpec.describe Api::ThoughtsController, type: :controller do
  describe "thoughts#update action" do
    
    let!(:expected_notes) {'This is a test'}

    it "should update the notes" do
      company = FactoryBot.create(:company)
      thought = FactoryBot.create(:thought, company_id: company.id)
      patch :update, params: { id: thought.id, thought: { notes: expected_notes} }
      thought.reload
      expect(thought.notes).to eq expected_notes
    end

  end

  describe "thoughts#create action" do

    let!(:expected_notes) {'This is a test'}

    it "should create both date & notes" do
      company = FactoryBot.create(:company)
      post :create, params: {ticker: company.symbol, thought:
                  {notes: expected_notes}}

      thought = Thought.last
      expect(thought.notes).to eq expected_notes
    end
  end

  describe "thoughts#destroy action" do

    it "should delete todo" do
      company = FactoryBot.create(:company)
      thought = FactoryBot.create(:thought, company_id: company.id)
      delete :destroy, params: {id: thought.id}

      thought = Thought.find_by_id(thought.id)
      expect(thought).to eq nil
    end
  end
end
