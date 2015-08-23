package main

import (
  "C"
  "../../github.com/ujun/go-mruby"
  "log"
)

func init() {
  log.Println("laoded!!")
  log.Println("laoded!!")
  log.Println("laoded!!")
}

//export grp
func grp() {
  mrb := mruby.NewMrb()
  defer mrb.Close()

  _, err := mrb.LoadFile("./sample.rb")
  if err != nil {
    panic(err.Error())
  }
}

func main() {
}
