require "rails_helper"

RSpec.describe PetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/pets").to route_to("pets#index")
    end

    it "routes to #new" do
      expect(:get => "/pets/new").to route_to("pets#new")
    end

    it "routes to #show" do
      expect(:get => "/pets/MyString").to route_to("pets#show", :tag => "MyString")
    end

    it "routes to #create" do
      expect(:post => "/pets").to route_to("pets#create")
    end
  end
end
