//
//  ACMOAICompletionsRequest.swift
//

public struct ACMOAICompletionsRequest {
    public var model: String
    public var prompt: [String]?
    public var suffix: String?
    public var max_tokens: Int?
    public var temperature: Double?
    public var top_p: Double?
    public var n: Int?
    public var stream: Bool?
    public var logprobs: Int?
    public var echo: Bool?
    public var stop: String?
    public var presence_penalty: Double?
    public var frequency_penalty: Double?
    public var best_of: Int?
    public var logit_bias: [String: Int]?
    public var user: String?
}
