//
//  StorageManager.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 15.11.22.
//

import Foundation
import FirebaseStorage

public class StorageManager {
    
    static let shared =  StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedDownload
    }
    
    public func uploadUserPost(model: UserPost, completion: (Result<URL, Error>) -> Void) {
        
    }
    
    public func downloadImage(with reference: String, completion: @escaping (Result<URL, IGStorageManagerError>) -> Void ) {
        bucket.child(reference).downloadURL(completion: { url, error in
            guard let url = url, error == nil else {
                completion(.failure(.failedDownload))
                
                return  
            }
            
            completion(.success(url))
        })
    }
    
}

public enum UserPostType {
    case photo, video
}

public struct UserPost {
    let postType: UserPostType
}
