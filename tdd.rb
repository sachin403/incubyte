
class StringCalculator

  #step-1, step-2
  def add(numbers)
    return 0 if numbers.empty?
    numbers.split(',').map(&:to_i).sum
  end

#step-3
  def add(numbers)
  return 0 if numbers.empty?
  numbers.split(/,|\n/).map(&:to_i).sum
end

#step-4
    def add(numbers)
     return 0 if numbers.empty?

     delimiter = /,|\n/
     if numbers.start_with?("//")
       delimiter, numbers = numbers[2..].split("\n", 2)
       delimiter = Regexp.escape(delimiter)
     end

     numbers.split(/#{delimiter}/).map(&:to_i).sum
    end


    #step-5 

    def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      delimiter = Regexp.escape(delimiter)
    end

    num_array = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = num_array.select { |num| num < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_array.sum
  end
end

