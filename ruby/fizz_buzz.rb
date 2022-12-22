 def fizz_buzz(x)
   if (x%15==0)
     "FizzBuzz"
   elsif (x%3==0)
     "Fizz"
   elsif (x%5==0)
     "Buzz"
   else
     x.to_s 
   end
end
 
 puts "数字を入力してください。"
 
 input = gets.to_i
 
 puts fizz_buzz(input)