//
//  CompletionsCallback.swift
//

/// Callback for holding completions endpoint
public struct CompletionsCallback {}

public extension CompletionsCallback {
    /// Create completions typealias
    typealias Create = ((ACMOAICompletionsResponse.Create?) -> Void)?
}
