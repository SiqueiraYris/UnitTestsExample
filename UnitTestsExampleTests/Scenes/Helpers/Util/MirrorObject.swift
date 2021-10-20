class MirrorObject {
    let mirror: Mirror
    
    init(reflecting: Any) {
        self.mirror = Mirror(reflecting: reflecting)
    }
    
    func extract<T>(variableName: StaticString = #function) -> T? {
        return mirror.descendant("\(variableName)") as? T
    }
}
