require "test_helper"

class CommutatorTest < MiniTest::Test
  def test_each_side_is_180_degrees
    commutator = ElectricMotor::Commutator.new

    assert_equal :a, commutator.input
    assert_equal :b, commutator.output
    commutator.turn(180)
    assert_equal :b, commutator.input
    assert_equal :a, commutator.output
    commutator.turn(270)
    assert_equal :a, commutator.input
    assert_equal :b, commutator.output
  end
end
