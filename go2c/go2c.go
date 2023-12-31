package main

import "C"

//export HelloFromGo
func HelloFromGo() C.int {
	print("hello from go\n")
	return 69
}

func main() {

}
