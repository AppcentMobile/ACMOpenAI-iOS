//
//  ACMOAIEditRequest.swift
//

public struct ACMOAIEditRequest {
    public var model: String
    public var input: String?
    public var instruction: String
    public var n: Int?
    public var temperature: Double?
    public var top_p: Double?
}
