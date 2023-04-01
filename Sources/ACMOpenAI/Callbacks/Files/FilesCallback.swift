//
//  FilesCallback.swift
//

public struct FilesCallback {}

public extension FilesCallback {
    typealias List = ((ACMOAIFilesResponse.List?) -> Void)?
    typealias Upload = ((ACMOAIFilesResponse.Upload?) -> Void)?
    typealias Delete = ((ACMOAIFilesResponse.Delete?) -> Void)?
    typealias Retrieve = ((ACMOAIFilesResponse.Retrieve?) -> Void)?
    typealias RetrieveContent = ((String?) -> Void)?
}
