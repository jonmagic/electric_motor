require "test_helper"

class TestConductor
  include ElectricMotor::Conducts
end

class TestGround
  include ElectricMotor::Conducts

  def receive(current)
    super
    @current = current
  end
end

class ConductsTest < MiniTest::Test
  def test_initialized_with_null_current
    conductor = TestConductor.new

    assert_nil conductor.current.charge
  end

  def test_can_connect_to_another_conductor
    conductor1 = TestConductor.new
    conductor2 = TestConductor.new
    conductor1.connect(conductor2)

    assert_equal [conductor2], conductor1.connections
  end

  def test_current_gets_passed_between_conductors
    conductor = TestConductor.new
    ground    = TestGround.new
    current   = ElectricMotor::Current.new(:positive)
    conductor.connect(ground)

    assert_nil ground.current.charge
    conductor.receive(current)
    assert_equal current, ground.current
    assert_nil conductor.current.charge
  end
end
