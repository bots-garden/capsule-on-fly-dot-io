package main

// TinyGo wasm module
import (
	hf "github.com/bots-garden/capsule/capsulemodule/hostfunctions"
	/* string to json */
	"github.com/tidwall/gjson"
	/* create json string */
	"github.com/tidwall/sjson"
)

// main is required.
func main() {
	hf.SetHandleHttp(Handle)
}

func Handle(bodyReq string, headersReq map[string]string) (bodyResp string, headersResp map[string]string, errResp error) {

	// display the body request
	hf.Log("📝 body: " + bodyReq)

	// get the data of the body request
	author := gjson.Get(bodyReq, "author")
	message := gjson.Get(bodyReq, "message")

	hf.Log("🟢 Content-Type: " + headersReq["Content-Type"])
	hf.Log("🔵 Content-Length: " + headersReq["Content-Length"])
	hf.Log("🟠 User-Agent: " + headersReq["User-Agent"])
	hf.Log("🔴 My-Token: " + headersReq["My-Token"])

	headersResp = map[string]string{
		"Content-Type": "application/json; charset=utf-8",
		"YourMessage":  message.String(),
		"MyToken":      headersReq["My-Token"],
	}

	jsondoc := `{"message": ""}`
	jsondoc, err := sjson.Set(jsondoc, "message", "👋 hey! "+author.String()+" What's up?")

	return jsondoc, headersResp, err
}
