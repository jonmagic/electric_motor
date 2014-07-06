require "test_helper"

class MagnetTest < MiniTest::Test
  def test_repels_similar_pole
    magnet1 = ElectricMotor::Magnet.new
    magnet2 = ElectricMotor::Magnet.new

    assert magnet2.north_pole.repel?(magnet1.north_pole)
  end

  def test_attracts_opposite_pole
    magnet1 = ElectricMotor::Magnet.new
    magnet2 = ElectricMotor::Magnet.new

    assert magnet2.north_pole.attract?(magnet1.south_pole)
  end
end
