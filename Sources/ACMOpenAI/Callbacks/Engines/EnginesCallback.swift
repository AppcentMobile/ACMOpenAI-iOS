//
//  EnginesCallback.swift
//

/// Callback for holding engines endpoint
public struct EnginesCallback {}

public extension EnginesCallback {
    /// List engines typealias
    typealias List = ((ACMOAIEnginesResponse.List?) -> Void)?
    /// Retrieve engines typealias
    typealias Retrieve = ((ACMOAIEnginesResponse.Retrieve?) -> Void)?
}
