//
//  ACMOAIChatRequest.swift
//

public struct ACMOAIChatRequest: Codable {
    var model: String
    var messages: [String]
    var temperature: Double?
    var top_p: Double?
    var n: Int?
    var stream: Bool?
    var stop: [String]?
    var max_tokens: Int?
    var presence_penalty: Double?
    var frequency_penalty: Double?
    var logit_bias: [String: Int]?
    var user: String?
}
