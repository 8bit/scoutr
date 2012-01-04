require 'test_helper'

class RoundtableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :roundtables
  
  def setup
    @roundtable = roundtables(:one)
  end
  
  test "Roundtable requires date" do
    @roundtable.happened_on = nil
    assert !@roundtable.valid?
  end

  test "Roundtable requires num_units" do
    @roundtable.num_units = nil
    assert !@roundtable.valid?
  end

  test "Roundtable requires num_individuals" do
    @roundtable.num_individuals = nil
    assert !@roundtable.valid?
  end

  test "Roundtable requires email" do
    @roundtable.email = nil
    assert !@roundtable.valid?
  end

  test "Roundtable email is valid" do
    @roundtable.email = "foo"
    assert !@roundtable.valid?
  end
  
  test "Roundtable belongs to a district" do
    assert_kind_of District, @roundtable.district
  end

  test "Roundtable belongs to a program" do
    assert_kind_of Program, @roundtable.program
  end
  
end
