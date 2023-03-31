//
//  ACMOAICompletionsRequest.swift
//

public struct ACMOAICompletionsRequest: Codable {
    var model: String
    var prompt: [String]?
    var suffix: String?
    var max_tokens: Int?
    var temperature: Double?
    var top_p: Double?
    var n: Int?
    var stream: Bool?
    var logprobs: Int?
    var echo: Bool?
    var stop: String?
    var presence_penalty: Double?
    var frequency_penalty: Double?
    var best_of: Int?
    var logit_bias: [String: Int]?
    var user: String?
}
