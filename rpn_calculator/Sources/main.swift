print("Enter RPN operations ending with return to print the current top of stack.")
print("RPN stack is maintained accross returns.")
print("Enter blank line to quit.")
var input : String?
var calculator = RPNCalculator()
var current_value : Double = 0
repeat {
  input = readLine(stripNewline: true)
  if let free_input = input {
    if (free_input != "") {
      current_value = calculator.calculateInput(free_input)
      print("Current top of stack: \(current_value)")
    }
  }
} while ((input != nil) && (input! != ""))
print("Exiting")
