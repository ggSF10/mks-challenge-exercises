# #Challenge Exercises

# #1 8/27/2014 Mean Challenge
# numbers = [1,40,8,12,12,3,19,17,29]

# total = 0
# numbers.each do |x| 
#     total += x.to_f
#     end
# average = total/numbers.size

# # average = numbers.inject(:+).to_f/numbers.length
# puts "#{average}"


#-----------------------------------------------------------------------


# #2 8/28/2014 Shuffle Challenge

# array = [1,2,3,4,5,6,7,8,9]

# def n_shuffle
# 	n = length
# 	for i in 0...n
# 		r = rand(n-1)+1
# 		self[r] + self[i] = self[i] + self[r]
# 	end
# 	self
# end

# array.n_shuffle


#-----------------------------------------------------------------------


# #3 8/29/2014 Cats n Hats

# def cat_hat(num)
# 	hash = Hash.new
# 	i = 1
# 	while i <= num
# 		(1..num).each do |j|
# 			hash[j] +=1 if j%i == 0
# 		end
# 		i += 1
# 	end

# 	hash.each do |k,v|
# 		hash[k] = "has hat" if v%2 != 0
# 		hash [k] = "doesn't have hat" if v%2 == 0
# 	end
# 	puts hash
# end


#-----------------------------------------------------------------------


#4 9/2/2014 Letter Inventory

# def frequency(text)
# 	characters = text.downcase.scan /\w/
# 	frequencies = Hash.new(0)
# 	characters.each {|a| frequencies[a] += 1}
# 	frequencies = frequencies.sort_by{|a, b| b}
# 	frequencies.reverse!
# 	frequencies.each {|character, frequency| print character + "=" + frequency.to_s + ", "}
# end

# text = "How are you today?"
# frequency(text)

#separate logic and presentation when constructing
#see DJ's solution on the Learn app


#-----------------------------------------------------------------------


#5 9/4/2014 Anagram

# def anagram(string1, string2)
#   s1 = string1.downcase.scan /\w/
#   s2 = string2.downcase.scan /\w/
#   if s1.sort == s2.sort
#     puts true
#   else s1.sort != s2.sort
#     puts false
#   end
#   # return s1.sort == s2.sort
# end

# puts anagram("silent", "listen")
# puts anagram("Torchwood", "Doctor Who")


#-----------------------------------------------------------------------


#6 9/5/2014 Palindrome

# def palindrome(text)
# 	text2 = text.downcase.gsub(/\W/, "")
#   return text2  ==  text2.reverse
# end

# def palindrome?(text)
# 	result = ""
# 	text.size.times do |x|
# 		reverse_index = (text.size - x) -1
# 	end
# end

# puts palindrome?(text)

# puts palindrome("civic")
# puts palindrome("a dog, a plan, a canal: pagoda")
# puts palindrome("Amy, must I jujitsu my ma?")


#-----------------------------------------------------------------------


#6	9/8/2014 Sum of a String

# string = "This is a string"

# def sum_string(string)
# 	sum = 0
# 	string1 = string.split(//)
# 	string1.each do |x|
# 	 sum += x.ord
# 	end
# 	return sum
# end

# #solution 1
# # def string_sum(str)
# #   str.split(//).inject(0){|res, elem| res + elem.ord}
# # end

# #solution 2
# # def str_sum(str)
# #   arr = str.split(//)
# #   arr.map!(:ord)
# #   arr.reduce(&:+)
# # end

# puts sum_string(string)


#-----------------------------------------------------------------------


#7 9/9/2014 Caesar Cipher

# class CaesarCipher
# 	attr_accessor :decrypt, :encrypt
# 	def initialize(shift =30, alphabet = ('a'..'z').to_a.join)
#     i = shift % alphabet.size #I like this
#     @decrypt = alphabet
#     @encrypt = alphabet[i..-1] + alphabet[0...i]
#   end

#   def encrypt(string)
#     string.tr(@decrypt, @encrypt)
#   end

#   def decrypt(string)
#     string.tr(@encrypt, @decrypt)
#   end
# end

# string = "this is a string"
# encrypt(string)


#-----------------------------------------------------------------------


#8 9/10/2014  Fibonacci Sequence

# def find_fib(num)
#   Array.new(num){|i| i+1}
#   for 1..num do |x|
#     x = (num-1) + (num-2)
#     return x
#   end
# end

# find_fib(5)


#-----------------------------------------------------------------------


#9 9/11/2014  Prime Number Checker

# def prime_number(num)
#   for i in 2...(num/2)
#    if (num % i) == 0
#     puts ""
#    end
#   end
#   return true
# end


# puts prime_number(7)


#-----------------------------------------------------------------------


#10 9/12/2014  Matrix Multiplication
# class Matrix

# def matrix_mult(array1, array2)
#   x = Array.new(n) { Array.new(n) (0) }
#   0.upto(n-1) do |i|
#     0.upto(n-1) do |j|
#       0.upto(n-1) do |k|
#         c[i][j] += a[i][k] * b[k][j]
#       end      
#     end
#   end
#   return c
# end

# end

# matrixA = [[1,0,-2], [0,3,-1]]
# matrixB = [[0,3], [-2,-1], [0,4]]

# puts matrix_mult(matrixA, matrixB)
# # the inner terms must match; and,
# # the outer terms are the resultant matrix
#   [A]    [B]
# (3 x 2)(2 x 3)

# # Given the two matrices
# matrix_A = [
#             [u,v],
#             [w,x],
#             [y,z]
#            ]
# matrix_B = [
#             [a,b,c],
#             [d,e,f]
#            ]

# # Result AB
# ]
#   [ua+vd], [ub+ve], [uc+fv],
#   [wa+xd], [wb+xe], [wc+fx],
#   [ya+zd], [yb+ze], [yc+fz]
# ]


#-----------------------------------------------------------------------


#11 9/18/2014  Recreate IRB

# def input(input)
#   result = eval(input)
#   puts(" => #{result}")
# end

# repl = -> prompt do
#   print prompt
#   input(gets.chomp!)
# end

# loop do
#   repl[">> "]
# end


#-----------------------------------------------------------------------


#12 9/19/2014	GCF Challenge

# def gcf(num1, num2)
# 	if num1 > num2
# 		num1, num2 = num2, num1
# 	end
# 	loop do
# 		remainder = num1 % num2
# 		if remainder == 0
# 			return num2
# 		else
# 			num1, num2, = num2, remainder 
# 		end
# 	end
# end

# puts gcf(210, 45)


#-----------------------------------------------------------------------


#13 9/22/2014	Compression Algorithm

# def compress(string)
# 	letters = string.split("")
# 	frequencies = Hash.new(0)
# 	letters.each { |x| frequencies[x] += 1 }
# 	frequencies.each do |letter, frequency|
# 		print letter + frequency.to_s.gsub("1", "")
# 	end
# end

# string = "AAABCCCDDEFKGYY"
# puts compress(string)


# #-----------------------------------------------------------------------


# #14 9/23/2014	Encode the Compression Algorithm

# def encode(string)
# 	letters = string.split("")
# 	frequencies = Hash.new(0)
# 	letters.each { |x| frequencies[x] += 1 }
# 	frequencies.sort {|count, char| [count, char]}
# 	frequencies.each do |letter, frequency|
# 		print letter + frequency.to_s.gsub("1", "")
# 	end
# end

# string = "aabbbcd"
# puts compress(string)


# #-----------------------------------------------------------------------


# # #15 9/30/2014 IRB Recreation with variables
# class MyIRB
# 	def initialize
# 	# Some places to store our IRB environment information
# 	@history = []
# 	@line_num = 0
# 		while true
# 	  	print "#{@line_num} $ "
# 	  	command = gets
# 	  	case command
# 	  	when 'history' || 'h'
# 	    	puts "#{@history}"
# 	  	else
# 	    	begin
# 	      	p eval(command)
# 	    	rescue
# 	      	puts "Invalid Command"
# 	    	ensure
# 	      	# we only want to add the command to history when
# 	      	# it is not the history command
# 	      	@history << command
# 	      	@line_num += 1
# 	    	end
# 	  	end
# 		end
# 	end
	
# 	def variable
		
# 	end
  
#   def self.run
#   	MyIRB.new
#   end
# end

# MyIRB.run


# #-----------------------------------------------------------------------


# #16 10/6/2014	Towers of Hanoi
# a = [1,2,3,4,5,6,7,8,9,10]
# def moveHanoi(disks, start, middle, finish)
#   if n==1
#     # move from start to finish
#   else
#     moveHanoi(disks - 1, start, middle, finish)   
#     moveHanoi(disk from start to finish)              
#     MoveTower(disk - 1, spare, dest, source)
#   end


# else move the top disk from a to c
# 	move the n-1 disk from a to b
# 	move small disk from c to b
# 	move the biggest disk from a to c
# end


# move the remaining disks from a to c


# #-----------------------------------------------------------------------


# #17 10/6/2014	Binary Search


# def binary_search(array, value)
# 		start = 0
# 		finish = array.length - 1
#  		while start < finish
#     	mid = start + (finish - start)/2
#    	 	puts start
#    	 	puts mid
#    	 	puts finish
#    	 	puts "----"
#     	if array[mid] > value
#     		finish = mid - 1
#    		elsif array[mid] == value
#    			return true
#    		else
#     		start = mid + 1
#    	 	end
#    	end
#    	return array[start] == value
# end

# array = [2,4,6,8,10,14,15]
# puts binary_search(array, 12)


# #-----------------------------------------------------------------------


# #18 10/9/2014 largest consecutive sum

# a = [1,7,-2,-8,-3,10]

# def largestsum(array)
#   max_sum = 0
#   max_x = 0
#   max_y = 0

#   for x in 0..array.length
#     for y in x+1..array.length
#       # current_sum = sum of x+y
#       if current_sum > max_sum
                   
#         array.inject(:+)

# end


# def max_sub_array(arry)
#     max_sum = arry.inject { |sum, n| sum += n }
#     min_length = arry.size
#     result = arry
#     (1...arry.size).each do |i|
#        (i...arry.size).each do |j|
#           sub = arry[i..j]
#           sum = sub.inject { |sum, n| sum += n }
#           next if sum < max_sum
#           next if sum == max_sum && sub.size >= min_length
#           max_sum, min_length, result = sum, sub.size, sub
#        end
#     end
#     result
# end


# // -----------------------------------------------------------------------


# // #19 10/13/2014 Circular Prime Number

# var primeNumber = function(number){
#   for (var y=0; y<=100; y++) {
#     var notPrime = false;
#     for (var x = 2; x<=y; x++) {
#       if (y%x === 0 && y !== x) {
#         notPrime = true;
#       }
#     }
#     if (notPrime === false) {
#       return x;
#     }
#   }
# };

# // divide number up into individual digits
# // check each digit with prime function
# // if each digit is prime, then circular prime
# // else not circular prime

# to optimize
# only look for numbers with digits that are already prime

# var eachDigit = function(number) {
#     output = [],
#     sNumber = number.toString();
#   for (var i = 0, i < sNumber.length; i += 1) {
#     output.push(sNumber.charAt(i));


# }

# var circlePrimeCheck = function(eachDigit)


# #-----------------------------------------------------------------------


# #20 10/20/2014 Game of Rotation

# n = 3
# array = [20,30,10]

# def rotation(n, array)
# 	i = 0
# 	while i < n do
# 		x = n-1
# 		array[0] * n-x

		

# 	# input number of times to multiply
# 	# multiply the first number in array by 1, second number by 2, etc...
# 	# 
# end


# #-----------------------------------------------------------------------


# #21 10/21/2014 Game of Rotation

# def palindrome(string)

# 	pseudocode

# 	split string into an array
# 	call .permutation to get all possible array combinations
# 	call .unique to get all unique solutions
# 	loop through arrays, if first half of array = second half of array push into another array
# 	each time pushed into new array increment counter

# end








