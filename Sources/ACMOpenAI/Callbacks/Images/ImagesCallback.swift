//
//  ImagesCallback.swift
//
//

public struct ImagesCallback {}

public extension ImagesCallback {
    typealias Create = ((ACMOAIImagesResponse.Create?) -> Void)?
    typealias CreateEdit = ((ACMOAIImagesResponse.CreateEdit?) -> Void)?
    typealias CreateVariation = ((ACMOAIImagesResponse.CreateVariation?) -> Void)?
}
