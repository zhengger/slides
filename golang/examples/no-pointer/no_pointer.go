package main

import (
	"fmt"
)

func main() {
	a := 1
	b := a
	fmt.Printf("%v %v %T %T\n", a, b, a, b)
	a++
	fmt.Printf("%v %v %T %T\n", a, b, a, b)
}
