//
//  CompletionsCallback.swift
//

public struct CompletionsCallback {}

public extension CompletionsCallback {
    typealias Create = ((ACMOAICompletionsResponse.Create?) -> Void)?
}
