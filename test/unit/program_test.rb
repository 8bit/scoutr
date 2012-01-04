require 'test_helper'

class ProgramTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Program has a name." do
    Program.create(:name => 'Test Program')
    assert Program.name
  end
  
end
