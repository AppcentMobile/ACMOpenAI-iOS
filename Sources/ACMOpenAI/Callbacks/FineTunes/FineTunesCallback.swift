//
//  FineTunesCallback.swift
//

/// Callback for holding fine tunes endpoint
public struct FineTunesCallback {}

public extension FineTunesCallback {
    /// Create fine tunes typealias
    typealias Create = ((ACMOAIFineTunesResponse.Create?) -> Void)?
    /// List fine tunes typealias
    typealias List = ((ACMOAIFineTunesResponse.List?) -> Void)?
    /// Retrieve fine tunes typealias
    typealias Retrieve = ((ACMOAIFineTunesResponse.Retrieve?) -> Void)?
    /// Cancel fine tunes typealias
    typealias Cancel = ((ACMOAIFineTunesResponse.Cancel?) -> Void)?
    /// List events fine tunes typealias
    typealias ListEvents = ((ACMOAIFineTunesResponse.ListEvents?) -> Void)?
    /// Delete fine tunes typealias
    typealias Delete = ((ACMOAIFineTunesResponse.Delete?) -> Void)?
}
