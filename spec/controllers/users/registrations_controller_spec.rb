require 'rails_helper'

RSpec.describe User::RegistrationsController, type: :controller do
  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end
  let(:valid_attributes) do
    user = attributes_for :user
    user
  end

  let(:valid_attributes_and_pet) do
    user = attributes_for :user
    user[:pets_attributes] = [attributes_for(:pet)]
    user
  end

  let(:invalid_attributes) do
    user = attributes_for :user
    user[:email] = ''
    user
  end

  describe 'POST #create' do
    context 'with valid params and without a pet' do
      subject { -> { post :create, params: { user: valid_attributes } } }
      it { should change(User, :count).by(1) }
      it { should change(Pet, :count).by(0) }
    end

    context 'with valid params and with a pet' do
      subject { -> { post :create, params: { user: valid_attributes_and_pet } } }
      it { should change(User, :count).by(1) }
      it { should change(Pet, :count).by(1) }
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { user: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end
end
