class ElectricMotor::PowerSupply
  def positive_lead
    ElectricMotor::Current.new(:positive)
  end

  def negative_lead
    ElectricMotor::Current.new(:negative)
  end
end
