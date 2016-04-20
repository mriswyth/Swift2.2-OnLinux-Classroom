func sieveOfEratothenes(value : Int) {
  guard value >= 2 else {
    print("The input of \(value) must be 2 or greater")
    return
  }

  // The Sieve algorithm starts at 2
  var sieveArray = Array(2...value)

  // Find the primes
  for element in sieveArray {
    if element != 0 {
      let next : Int = element + element
      for i in next.stride(through: value, by: element) {
        sieveArray[i-2] = 0
      }
    }
  }

  // Print and count the primes
  var count : Int = 0
  for element in sieveArray {
    if (element != 0) {
      print("\(element)", separator: " ", terminator: " ")
      count += 1
    }
  }
  print("\n\(count) primes up to \(value)")
}


print("Find primes up to and including:")
var input : String?
input = readLine(stripNewline: true)
if let inputString = input, let inputValue = Int(inputString) {
  sieveOfEratothenes(inputValue)
} else {
  print("Input could not be converted to an integer for the prime number search.")
}
