class ClosestToZeroCalculator
  def closest(list)
    ctz = nil

    list.each do |num|
      if ctz.nil? || num.abs < ctz
        ctz = num
      end
    end

    ctz
  end
end
