//
//  ACMOAIImagesCreateVariationRequest.swift
//

public struct ACMOAIImagesCreateVariationRequest {
    public var image: String
    public var n: Int?
    public var size: String?
    public var response_format: String?
    public var user: String?

    init(image: String, n: Int? = nil, size: String? = nil, response_format: String? = nil, user: String? = nil) {
        self.image = image
        self.n = n
        self.size = size
        self.response_format = response_format
        self.user = user
    }
}
