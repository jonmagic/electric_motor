class ElectricMotor::Commutator
  include ElectricMotor::Rotates

  def input
    if angle < 180
      :a
    else
      :b
    end
  end

  def output
    if angle >= 180
      :a
    else
      :b
    end
  end
end
