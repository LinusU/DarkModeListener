import Foundation

class Main: NSObject {
    override init() {
        super.init()
        UserDefaults.standard.addObserver(self, forKeyPath: "AppleInterfaceStyle", options: [.initial, .new], context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        let value = (change![.newKey] as? String)?.lowercased() ?? "light"
        print(value)
    }
}

// Disable buffering of stdout
setbuf(__stdoutp, nil)

let main = Main()
RunLoop.main.run()
