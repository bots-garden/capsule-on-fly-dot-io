package main

import hf "github.com/bots-garden/capsule/capsulemodule/hostfunctions"

// main is required.
func main() {

	hf.Log("🚀 ignition...")
	hf.SetHandle(Handle)
}

func Handle(params []string) (string, error) {

	// get the value of an environment variable
	message, err := hf.GetEnv("MESSAGE")
	if err != nil {
		hf.Log(err.Error())
	} else {
		hf.Log("MESSAGE=" + message)
	}

	// display the list of the arguments
	for _, param := range params {
		hf.Log("- parameter is: " + param)
	}

	// create a text file
	newFile, err := hf.WriteFile("hello.txt", "👋 HELLO WORLD 🌍")
	if err != nil {
		hf.Log(err.Error())
	}
	hf.Log(newFile)
	
	// read the content of the file
	txt, err := hf.ReadFile("hello.txt")
	if err != nil {
		hf.Log(err.Error())
	}
	hf.Log(txt)

	return "that's all 🙂", err
}
