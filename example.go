package main

import (
  "C"
  "github.com/mitchellh/go-mruby"
)

//export example
func example() {
  mrb := mruby.NewMrb()
  defer mrb.Close()

  _, err := mrb.LoadString(`5.times {|num| puts "*" * num}`)
  if err != nil {
    panic(err.Error())
  }
}

func main() {
}
