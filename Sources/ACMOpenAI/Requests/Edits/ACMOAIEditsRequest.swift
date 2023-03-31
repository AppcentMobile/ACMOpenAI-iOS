//
//  ACMOAIEditRequest.swift
//

public struct ACMOAIEditRequest: Codable {
    var model: String
    var input: String?
    var instruction: String
    var n: Int?
    var temperature: Double?
    var top_p: Double?
}
