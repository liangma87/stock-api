require 'rails_helper'

RSpec.describe Api::TodosController, type: :controller do
  
  describe "todos#update action" do
    
    let!(:expected_date) {Date.parse('2020-01-01')}
    let!(:expected_notes) {'This is a test'}

    it "should update the date" do
      company = FactoryBot.create(:company)
      todo = FactoryBot.create(:todo, company_id: company.id)
      patch :update, params: { id: todo.id, todo: { date: expected_date} }
      todo.reload
      expect(todo.date).to eq expected_date
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
                  {date: expected_date, notes: expected_notes}}
      todo.reload
      expect(todo.notes).to eq "This is a test"
      expect(todo.date).to eq expected_date
    end
  end

  describe "todos#create action" do

    let!(:expected_date) {Date.parse('2020-01-01')}
    let!(:expected_notes) {'This is a test'}

    it "should create both date & notes" do
      company = FactoryBot.create(:company)
      post :create, params: {ticker: company.symbol, todo:
                  {date: expected_date, notes: expected_notes}}

      todo = Todo.last
      expect(todo.notes).to eq "This is a test"
      expect(todo.date).to eq expected_date
    end
  end

  describe "todos#destroy action" do

    it "should delete todo" do
      company = FactoryBot.create(:company)
      todo = FactoryBot.create(:todo, company_id: company.id)
      delete :destroy, params: {id: todo.id}

      todo = Todo.find_by_id(todo.id)
      expect(todo).to eq nil
    end
  end

end
