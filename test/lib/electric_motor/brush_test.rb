require "test_helper"

class BrushTest < MiniTest::Test
  def test_is_initialized_with_nil_current
    brush = ElectricMotor::Brush.new

    assert_nil brush.current.charge
  end

  def test_can_connect_new_current
    brush = ElectricMotor::Brush.new
    brush.connect(ElectricMotor::Current.new(:positive))
    assert_equal :positive, brush.current.charge
  end

  def test_can_disconnect_current
    brush = ElectricMotor::Brush.new
    brush.connect(ElectricMotor::Current.new(:positive))
    brush.disconnect

    assert_nil brush.current.charge
  end
end
