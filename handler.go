package urlhandler

/*
#cgo CFLAGS: -x objective-c
#cgo LDFLAGS: -framework Foundation
#include "handler.h"
*/
import "C"

type URLHandler func(string)
var callback URLHandler

// SetHandler sets the function that should be called when
// a URI event is passed to the process.
func SetHandler(handler URLHandler) {
	callback = handler
}

//export callHandler
func callHandler(url *C.char) {
	if callback != nil {
		callback(C.GoString(url))
	}
}

func init() {
	C.init()
}