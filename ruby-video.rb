array = [1, 2, 3, 4, 5]
another_array = [5, 2, 6, 1]

proc_times_two = Proc.new { |number, value, array, teste, ajkshdgajkda| number * 2 }
lambda_times_two = lambda do |acc, number|
	acc + number
end

times_two = array.map(&proc_times_two)
sum_items = another_array.reduce(&lambda_times_two)

print times_two
puts
print sum_items
puts

def proc_demo
	proc_test = Proc.new {return "Inside proc"}
	proc_test.call
	return "Inside method"
end

def lambda_demo
	lambda_test = -> {return "Inside lambda"}
	return "Inside method"
end

puts proc_demo
puts lambda_demo

value = 0

def some_method
	value += 1
end

# some_method

some_lambda = -> {value += 1}

puts some_lambda.call
puts some_lambda.call