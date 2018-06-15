package main

import (
    "crypto/sha512"
)


func sha () {
    input := "Jon is the cooooolest"
    sha_512 := sha512.New()
    sha_512.Write([]byte(input))
}

func main() {
    for {
        sha()
    }
}
