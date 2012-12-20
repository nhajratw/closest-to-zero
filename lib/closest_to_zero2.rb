class ClosestToZeroCalc

  def for(numbers)
    raise RuntimeError.new('nothing in the list') if numbers.size == 0

    pos_match = nil
    neg_match = nil

    ctz = numbers[0].abs

    numbers.each do |num|
      if num.abs <= ctz
        if num > 0
          pos_match = num
        else
          neg_match = num
        end
      end
    end

    matches = []
    if neg_match.nil?
      matches << pos_match
    end

    if pos_match.nil?
      matches << neg_match
    end

    if !neg_match.nil? && !pos_match.nil?
      if pos_match == neg_match.abs
        matches << pos_match
        matches << neg_match
      elsif pos_match < neg_match.abs
        matches << pos_match
      elsif pos_match > neg_match.abs
        matches << neg_match
      end
    end

    if matches.size == 1
      matches.to_a[0]
    else
      matches.to_a.sort
    end
  end











end
