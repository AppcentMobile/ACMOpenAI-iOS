public struct ACMOpenAI {
    public init() {}

    public func manager<T: BaseAPIManager>(item: T.Type) -> T {
        return item.init()
    }
}
