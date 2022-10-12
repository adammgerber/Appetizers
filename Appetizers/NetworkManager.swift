//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Adam Gerber on 10/11/22.
//

import Foundation

//Apple prefers that Network Managers be singletons, and be shared where needed
final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    // Get appetizers: once completed the result will either be the array of appetizers, or an error(our custom error)
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        
        //check if url is valid, if not then throw an error
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        // create network call with the valid url from previous step: returns data, response, or an error
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let _ = error else {
                completed(.failure(.unableToComplete))
                return
            }
            // check if response is not nil, if so then cast it as HTTPURLResponse and check status code is 200
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            //if we made it here, then we have good data.
            do {
                let decoder = JSONDecoder()
                //check to successfully decode and pass back array of appetizers (AppetizerResponse)
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
                // Otherwise if theres an error, return the error. The error here is liekly due to misformatting of model (doesnt match JSON)
            } catch {
                completed(.failure(.invalidData))
            }
        }
        //finally fire off network call
        task.resume()
        
        
    }
}
