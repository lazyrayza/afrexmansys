require 'test_helper'

class UnitsControllerTest < ActionDispatch::IntegrationTest


  describe "POST unit#create" do
    it "should create a new unit" do
      user = create(:user)
      login_as(user, scope: :user)
      visit new_development_unit_path

      fill_in "unit_number", with: 5
      fill_in "floor", with: 5
      fill_in "size", with: 5000
      fill_in "bedrooms", with: 5
      fill_in "bathrooms", with: 5
      fill_in "price", with: 5000
      fill_in "apartment", with: True
      fill_in "description", with: "Testing creating method for lease"
      fill_in "development_id", with: 1

      expect { click_button "Submit" }.to change(Unit, :count).by(1)
    end
  end
end

