import Cocoa

enum Mode: String {
    case dark
    case light
}

@available(OSX 10.14, *)
class Main: NSObject {
    override init() {
        super.init()
        NSApplication.shared.addObserver(self, forKeyPath: "effectiveAppearance", options: [.initial, .new], context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let value = change?[.newKey] as? NSAppearance {
            parseAppearance(value)
        }
    }

    
    func parseAppearance(_ appearance: NSAppearance) {
        switch appearance.bestMatch(from: [.aqua, .darkAqua]) {
        case .darkAqua?:
            print(Mode.dark)
        default:
            print(Mode.light)
        }
    }
}

// Disable buffering of stdout
setbuf(__stdoutp, nil)

var main: Any? = nil
if #available(OSX 10.14, *) {
    main = Main()
} else {
    print(Mode.light)
}
RunLoop.main.run()
