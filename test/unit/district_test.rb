require 'test_helper'

class DistrictTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "District has a name." do
    District.create(:name => 'Test District')
    assert District.name
  end
end
