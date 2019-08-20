require 'rails_helper'

RSpec.describe Api::V1::TodosController, type: :controller do
  
  describe "todos#update action" do
    
    let!(:expected_date) {Date.parse('2020-01-01')}
    let!(:expected_notes) {'This is a test'}

    it "should update the date" do
      company = FactoryBot.create(:company)
      todo = FactoryBot.create(:todo, company_id: company.id)
      patch :update, params: { id: todo.id, todo: { completion_date: expected_date} }
      todo.reload
      expect(todo.completion_date).to eq expected_date
    end

    it "should update the date" do
      company = FactoryBot.create(:company)
      todo = FactoryBot.create(:todo, company_id: company.id)
      patch :update, params: { id: todo.id, todo: { notes: expected_notes}}
      todo.reload
      expect(todo.notes).to eq expected_notes
    end

    it "should update both date & notes" do
      company = FactoryBot.create(:company)
      todo = FactoryBot.create(:todo, company_id: company.id)
      patch :update, params: {id: todo.id, todo:
                  {completion_date: expected_date, notes: expected_notes}}
      todo.reload
      expect(todo.notes).to eq "This is a test"
      expect(todo.completion_date).to eq expected_date
    end

  end

end
