package main

import (
	"log"
	"net/http"
	"time"
)

func main() {
	_, err := http.Get("https://google.com")
	if err != nil {
		log.Fatalf("can not connect to https://google.com")
	}
	_, err = time.LoadLocation("Asia/Bangkok")
	if err != nil {
		log.Fatalf("can not load timezone")
	}
	log.Println("test passed")
}
