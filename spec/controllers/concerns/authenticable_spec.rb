require 'rails_helper'

class Authentication < ActionController::Base
  include Authenticable
end

RSpec.describe Authenticable do
  subject(:authentication) { Authentication.new }

  describe '#current_user' do
    let(:user) { create :user }

    before do
      request.headers['Authorization'] = user.api_token
      allow(authentication).to receive(:request).and_return(request)
    end

    it 'returns the user from the authorization header' do
      expect(authentication.current_user.api_token).to eq user.api_token
    end
  end
end
