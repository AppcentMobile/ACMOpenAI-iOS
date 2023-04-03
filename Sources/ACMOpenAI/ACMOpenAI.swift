//
//  ACMOpenAI.swift
//

/// Starting point of Open AI SDK
public struct ACMOpenAI {
    /// Base init
    public init() {}

    /// Generic manager for creating API managers
    ///
    /// - Parameters:
    ///     - item: T<Generic>
    ///
    /// - Returns:
    ///     - T -> Generic
    public func manager<T: BaseAPIManager>(item: T.Type) -> T {
        return item.init()
    }
}
