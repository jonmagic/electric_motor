require "test_helper"

class ElectricMotorTest < MiniTest::Test
  def test_current_applied_to_left_brush_arrives_at_right_brush
    electric_motor = ElectricMotor.new
    current        = ElectricMotor::Current.new(:positive)

    assert_nil electric_motor.right_brush.current.charge

    electric_motor.left_brush.receive(current)

    assert_equal current, electric_motor.right_brush.current
  end
end
