require "test_helper"

class ArmatureTest < MiniTest::Test
  def test_can_spin_freely
    armature = ElectricMotor::Armature.new
    assert_equal 0, armature.angle
    armature.turn(540)
    assert_equal 180, armature.angle
  end
end
