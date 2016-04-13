if (Process.arguments.count != 2) {
	print("Usage: \(Process.arguments[0]) NAME")
} else {
	let name = Process.arguments[1]
	sayHello(name)
}
