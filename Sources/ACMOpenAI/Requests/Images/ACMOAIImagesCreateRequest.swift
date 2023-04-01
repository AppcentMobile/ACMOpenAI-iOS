//
//  ACMOAIImagesCreateRequest.swift
//

public struct ACMOAIImagesCreateRequest {
    public var image: String
    public var mask: String?
    public var prompt: String
    public var n: Int?
    public var size: String?
    public var response_format: String?
    public var user: String?

    public init(image: String, mask: String? = nil, prompt: String, n: Int? = nil, size: String? = nil, response_format: String? = nil, user: String? = nil) {
        self.image = image
        self.mask = mask
        self.prompt = prompt
        self.n = n
        self.size = size
        self.response_format = response_format
        self.user = user
    }
}
