func tokenizeInput(input : String) -> [String] {
  var tokens = [String]()
  var newString : String = ""

  for inputToken in input.characters {
    if inputToken == " " {
      tokens.append(newString)
      newString = ""
    } else {
      newString.append(inputToken)
    }
  }

  if newString != "" {
      tokens.append(newString)
  }

  return tokens
}


print("Enter RPN operations ending with return to print the current top of stack.")
print("RPN stack is maintained accross returns.")
print("Enter blank line to quit.")
var input : String?
var calculator = RPNCalculator()
repeat {
  input = readLine(stripNewline: true)
  if let inputString = input {
    if (inputString != "") {
      // No componentsSeparatedByString in this version
      //let tokens : [String] = input.componentsSeparatedByString(" ") 
      let tokens : [String] = tokenizeInput(inputString)
      let currentValue : Double = calculator.calculateInput(tokens)
      print("Current top of stack: \(currentValue)")
    }
  }
} while ((input != nil) && (input! != ""))
print("Exiting")
