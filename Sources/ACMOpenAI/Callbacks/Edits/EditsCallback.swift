//
//  EditsCallback.swift
//

/// Callback for holding edits endpoint
public struct EditsCallback {}

public extension EditsCallback {
    /// Create edits typealias
    typealias Create = ((ACMOAIEditsResponse.Create?) -> Void)?
}
