
#Write a program to check weather a number is positive, negative or zero
# puts "Enter a number"
# $i = gets.chomp.to_i

# if $i>0
#     puts "#$i  is a positive number"
# elsif $i == 0
#     puts "zero"
# else
#     puts "#$i is a negative number"
# end


# Write a program to reverse a number

# $i = gets.chomp.to_i
# reversed_num = 0
# while $i > 0
#     digit = $i%10
#     #puts digit
#     reversed_num = 10*reversed_num + digit
#     #puts reversed_num
#     $i = $i /10
# end

# puts  reversed_num


#Write a program to check weather a string is palindrome 

# require 'byebug'
# string = gets.chomp
# reverse_string = ""

# i = 1
# l = string.length
# while i <= l
#     reverse_string  += string[l-i]
#     i += 1
# end

# puts string == reverse_string
# if string == reverse_string
#     puts "#{string} is a palindrome"
# else
#     puts "#{string} is not a palindrome"
# end

#Write a program for calculator having functionality like addition, subtraction, multiplication, division showing remainder and quotient   


# puts "Enter a functionality addition - a substraction - s multiplication - m division- d reminder - r quotient - q"

# operation = gets.chomp
# puts "Enter a"
# a = gets.chomp.to_i
# puts "enter b"
# b = gets.chomp.to_i


# if operation == "a"
#     puts a + b 
# elsif operation == "s"
#     puts a -b 
# elsif operation == "m"
#     puts a * b 
# elsif operation == "d"
#     puts a / b 
# elsif operation == "r"
#     puts  a % b
# elsif operation == "q"
#     puts  a / b
# end


# puts "enter a table number"

# n = gets.chomp.to_i

# i = 1

# while i < 11
#     puts "#{n} X #{i} = #{n*i}"
#     i += 1
# end

# puts "Enter number a"

# a = gets.chomp.to_i
# puts "Enter number b"
# b = gets.chomp.to_i

# if a < b 
#     puts "#{a} is small number"
# elsif a == b 
#     puts "both values are same"
# else
#     puts "#{b} is a max value"
# end

#Write a program to find square and cube of a number given by a user

# a = gets.chomp.to_i

# puts ( a ** 2)
# puts (a ** 3)

# array = [1,2,4,5,3,4,5,56,6]

# i = 0
# max = array[0]
# min = array[0]

# while i< array.length
#     if array[i]>max
#         max = array[i]
#     end
#     if array[i]<min
#         min  = array[i]
#     end
#      i += 1
# end
# puts "maximum number in array : #{max}"
# puts "minimum number in array :  #{min}"

#Write a program to find even and odd number in an array

array = [1,2,4,5,3,4,5,56,6]

# i = 0
# while i < array.length
#     if array[i] %2 ==0
#         puts "#{array[i]} is a even number"
#     else
#         puts "#{array[i]} is a odd number"
#     end
#     i  += 1
# end

# i = 0

# while i < 10
#     if i%2 == 0
#         puts "#{i} is a even number"
#     else
#         puts "#{i} is a odd number"
#     end
# end

# puts "Enter a number"
# n = gets.chomp.to_i
# i = 1
# fact = 1

# while i <= n
#     fact *= i
#     i += 1
# end
# puts fact


#Write a program to find sum of digits of a number

# n = gets.chomp.to_i
# total = 0
# while n != 0
#     digit  = n%10
#     total += digit
#     n = n/10
# end
# puts total

# now = Time.now 

# puts "after 10 days #{now + 10*24*60*60}"
# puts "before 10 days #{now - 10*24*60*60}"
# puts "after 1 year #{now + 365*24*60*60}"
# puts "before 1 year #{now - 365*24*60*60}"

# n = gets.chomp.to_i

# left_spaces = n -1

# i = 1
# while  i<n
#     puts " "*left_spaces + "* " *i
#     left_spaces -= 1
#     i += 1
# end

# n = gets.chomp.to_i

# left_spaces = 0

# i = n
# while  i>0
#     puts " "*left_spaces + "* " *i
#     left_spaces += 1
#     i -= 1
# end


# string = gets.chomp.to_s

# new_output = ""
# l = string.length
# i = 0
# while i < l
#     if string[i] != " "
#         new_output += string[i]
#     end
#     i += 1
# end
# puts new_output

# string = gets.chomp.to_s

# count = 0
# i = 0
# l = string.length
# while i < l
#     if string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u"
#         count += 1
#     end
#     i += 1
# end
# puts count

# puts "Enter a number"
# n = gets.chomp.to_i 
# i = 2
# is_prime = TRUE
# while (i <n)
#     if n%i == 0
#         is_prime = FALSE
#     end
# end

# if is_prime
#     puts "it is a prime number"
# else 
#     puts "it is not a prime number"
# end

a = [45,2,4,5,6,5, 6,6, 56,67,34,21]

l = a.length
max = a[0]
for i in 0..l-1
    for j in i+1..l-1
        if a[i]>a[j]
            a[i],a[j] = a[j],a[i]
        end
    end
end
puts a









