//
//  ModerationsCallback.swift
//

/// Callback for holding moderations endpoint
public struct ModerationsCallback {}

public extension ModerationsCallback {
    /// Create moderations typealias
    typealias Create = ((ACMOAIModerationsResponse.Create?) -> Void)?
}
