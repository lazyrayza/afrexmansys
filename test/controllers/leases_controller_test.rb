require 'test_helper'

class LeasesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  describe "POST leases#create" do
  it "should create a new lease" do
    user = create(:user)
    login_as(user, scope: :user)
    visit new_development_unit_lease_path

    fill_in "start_date", with: 1.hour.ago
    fill_in "end_date", with: 1.year.from_now
    fill_in "duration", with: 1
    fill_in "rent", with: 3000
    fill_in "deposit", with: 4500
    fill_in "notes", with: "Testing creating method for lease"
    fill_in "unit_id", with: 1
    fill_in "tenant_id", with: 1

    expect { click_button "Save" }.to change(Lease, :count).by(1)
  end
end
end

