require "test_helper"

class ElectricMotorTest < MiniTest::Test
  def test_motor_runs_when_given_power
    motor = ElectricMotor.new
    refute motor.running?
    assert_equal 0, motor.rpm

    motor.power(true)
    assert motor.running?
    assert_equal 1000, motor.rpm

    motor.power(false)
    refute motor.running?
    assert_equal 0, motor.rpm
  end
end
