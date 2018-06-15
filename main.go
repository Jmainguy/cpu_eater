package main

import "time"

func eat() {
    go eat()
    time.Sleep(time.Millisecond)
}

func main() {
    for {
        go eat()
    }
}
