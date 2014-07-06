require "test_helper"

class PowerSupplyTest < MiniTest::Test
  def test_positive_lead_provides_positive_charge
    power_supply = ElectricMotor::PowerSupply.new

    assert_equal :positive, power_supply.positive_lead.charge
  end

  def test_negative_lead_provides_negative_charge
    power_supply = ElectricMotor::PowerSupply.new

    assert_equal :negative, power_supply.negative_lead.charge
  end
end
