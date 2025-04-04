
class StringCalculator

  #step-1, step-2
  def add(numbers)
    return 0 if numbers.empty?
    numbers.split(',').map(&:to_i).sum
  end

#step-3
  def add(numbers)
  return 0 if numbers.strip.empty?
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
end

