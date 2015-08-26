package main

import (
  "C"
  "github.com/ujun/go-mruby"
)

//export example
func example() {
  mrb := mruby.NewMrb()
  defer mrb.Close()

  _, err := mrb.LoadFile("./example.rb")
  if err != nil {
    panic(err.Error())
  }
}

func main() {
}
