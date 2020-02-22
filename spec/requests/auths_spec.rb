require 'rails_helper'
require 'devise/jwt/test_helpers'

RSpec.describe "Auths", type: :request do
  
  describe "devise/registrations#create" do
    let(:params) do 
      {
        user: {
          email: 'user@example.com',
          password: 'password'
        }
      }
    end

    it "should sign up new user" do
      # Sign up user
      post user_registration_path, params: params
      expect(response).to have_http_status(:success)
      response_value = ActiveSupport::JSON.decode(response.body)
      expect(response_value['email']).to eq("user@example.com")
      expect(response_value['jti']).to be_present
    end

    it "should not sign up existing user" do
      # Sign up user
      post user_registration_path, params: params
      # Then sign up same user again
      post user_registration_path, params: params
      expect(response).to have_http_status(:unprocessable_entity)
    end

    it "should sign in authorized user" do
      # sign up user
      post user_registration_path, params: params
      # sign in user
      post user_session_path, params: params
      expect(response).to have_http_status(:success)
      response_value = ActiveSupport::JSON.decode(response.body)
      expect(response_value['jti']).to be_present
    end

    it "should not sign in unauthorized user" do
      # sign in new user directly
      post user_session_path, params: params
      expect(response).to have_http_status(:unauthorized)
      response_value = ActiveSupport::JSON.decode(response.body)
      expect(response_value['jti']).to be_nil
    end

    it "should sign out user" do
      # sign up
      post user_registration_path, params: params
      # sign in
      post user_session_path, params: params
      jwt_token = response.headers['Authorization']
      # sign out
      delete destroy_user_session_path, as: :json, headers: {:Authorization => jwt_token}
      expect(response).to have_http_status(:success)
      # try using the same token again
      get api_companies_path, as: :json, headers: {:Authorization => jwt_token}
      expect(response).to have_http_status(:unauthorized)
    end

    it "should authenticate user with token" do
      # sign up
      post user_registration_path, params: params
      jwt_token = response.headers['Authorization']
      # access web with token
      get api_companies_path, as: :json, headers: {:Authorization => jwt_token}
      expect(response).to have_http_status(:success)
    end

  end
end
