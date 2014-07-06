require "test_helper"

class CoilTest < MiniTest::Test
  def test_has_no_magnetic_field_before_being_supplied_current
    coil = ElectricMotor::Coil.new

    assert_nil coil.side_a.direction
    assert_nil coil.side_b.direction
  end

  def test_creates_magnetic_field_when_supplied_current
    coil     = ElectricMotor::Coil.new
    positive = ElectricMotor::Current.new(:positive)
    negative = ElectricMotor::Current.new(:negative)

    coil.connect_a(positive)
    coil.connect_b(negative)
    assert_equal :south, coil.side_a.direction
    assert_equal :north, coil.side_b.direction
  end
end
