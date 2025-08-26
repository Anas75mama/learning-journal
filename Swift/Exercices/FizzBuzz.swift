import Foundation

for i in 1...100 {

  if i % 5 == 0 && i % 3 == 0{
    print("FizzBuzz")
  }
  else if i % 3 == 0 {
    print("\(i) is Fizz")}
  else if i % 5 == 0 {
    print("\(i) is Buzz")
  }

  else {
    print(i)
  }
  }

