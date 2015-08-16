package main

import (
  "github.com/ujun/go-mruby"
)

func main() {
  mrb := mruby.NewMrb()
  defer mrb.Close()

  _, err := mrb.LoadFile("./sample.rb")
  if err != nil {
    panic(err.Error())
  }

}
