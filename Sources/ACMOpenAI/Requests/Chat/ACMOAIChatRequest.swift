//
//  ACMOAIChatRequest.swift
//

public struct ACMOAIChatRequest: Codable {
    public var model: String
    public var messages: [String]
    public var temperature: Double?
    public var top_p: Double?
    public var n: Int?
    public var stream: Bool?
    public var stop: [String]?
    public var max_tokens: Int?
    public var presence_penalty: Double?
    public var frequency_penalty: Double?
    public var logit_bias: [String: Int]?
    public var user: String?
}
