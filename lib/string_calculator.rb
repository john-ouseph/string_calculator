class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..-1].split("\n", 2)
    else
      delimiter = ",|\n"
    end

    values = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives_values = values.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives_values.join(', ')}" unless negatives_values.empty?

    values.inject(:+)
  end
end
  