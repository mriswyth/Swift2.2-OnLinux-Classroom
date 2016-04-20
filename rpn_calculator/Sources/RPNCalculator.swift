// Simple Reverse Polish Notation Calculator
// Supports +, -, *, and /
// calculateInput - takes full line of input and returns the top of the stack at the end

struct RPNCalculator {
  private var stack = [Double]()

  private mutating func performOperation(operation : String) {
    guard stack.count > 1 else {
      print("Not enough values for \(operation)")
      return
    }

    let valueTwo = stack.removeLast()
    let valueOne = stack.removeLast()

    switch (operation) {
      case "+":
        stack.append(valueOne + valueTwo)
      case "-":
        stack.append(valueOne - valueTwo)
      case "*":
        stack.append(valueOne * valueTwo)
      case "/":
        stack.append(valueOne / valueTwo)
      default:
        print("Unknown operation \(operation)")
    }
  }
  
  mutating func calculateInput(input : [String]) -> Double {
      for inputToken in input {
        if inputToken == "+" || inputToken == "-" || 
           inputToken == "*" || inputToken == "/" {
          performOperation(inputToken)
        } else {
          // Parse number
          if let inputDouble = Double(inputToken) {
            stack.append(inputDouble)
          } else {
            print("Could not convert \(inputToken) to Double")
          }
        }
      }
      return stack[stack.endIndex-1]
  }
}
