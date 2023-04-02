//
//  FineTunesCallback.swift
//

public struct FineTunesCallback {}

public extension FineTunesCallback {
    typealias Create = ((ACMOAIFineTunesResponse.Create?) -> Void)?
    typealias List = ((ACMOAIFineTunesResponse.List?) -> Void)?
    typealias Retrieve = ((ACMOAIFineTunesResponse.Retrieve?) -> Void)?
    typealias Cancel = ((ACMOAIFineTunesResponse.Cancel?) -> Void)?
    typealias ListEvents = ((ACMOAIFineTunesResponse.ListEvents?) -> Void)?
    typealias Delete = ((ACMOAIFineTunesResponse.Delete?) -> Void)?
}
