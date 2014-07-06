require "test_helper"

class MagneticPoleTest < MiniTest::Test
  def test_repels_similar_pole
    north = ElectricMotor::MagneticPole.new(:north)

    assert north.repel?(north)
  end

  def test_attracts_opposite_pole
    north = ElectricMotor::MagneticPole.new(:north)
    south = ElectricMotor::MagneticPole.new(:south)

    assert north.attract?(south)
  end
end
