def extract_and_sum(input)
  input.reduce(0) do |sum, line|
    first_digit = line[/\d/]
    last_digit = line.reverse[/\d/]
    sum + (first_digit && last_digit ? "#{first_digit}#{last_digit}".to_i : 0)
  end
end

total_sum = extract_and_sum(input)
puts "Total sum: #{total_sum}"
