def fibs(n)
  count = 0
  prev_one = 1
  prev_two = 0
  while (count <= n)
    if (count == 0)
	  puts 0
    elsif (count == 1)
	  puts 1
	else
	  curr = prev_one + prev_two
	  puts "#{curr}"
	  prev_two, prev_one = prev_one, curr
	end
	count += 1
  end
end

def fibs_rec(n)
  return 0 if n == 0
  return 1 if n == 1
  fibs_rec(n-1) + fibs_rec(n-2)
end

begin
  puts "How many times do you want to run the fib sequence?"
  input = gets.chomp
  puts "Fib done with iteration:"
  fibs(input.to_i)
  puts "Now done recursively:"
  (input.to_i+1).times do |i|
  	puts fibs_rec(i)
  end
rescue
  puts "Input invalid, program closing."
  exit(0)
end