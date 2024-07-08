class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..-1].split("\n", 2)
    else
      delimiter = ",|\n"
    end

    numbers.split(/#{delimiter}/).map(&:to_i).reduce(:+)
  end
end
  