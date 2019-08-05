//
//  NetworkService.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/2/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import Foundation

class NetworkService {
    
    class func getWeatherData<T: Codable>(router: Router, completion: @escaping (Result<T, Error>) -> ()) {
        
        var components = URLComponents()
        components.scheme = router.scheme
        components.host = router.host
        components.path = router.path
        components.queryItems = router.parameters
        
        let session = URLSession(configuration: .default)
        guard let url = components.url else { print("invalid url"); return }
        let request = URLRequest(url: url)
        
        let dataTask = session.dataTask(with: request) { data, response, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            guard response != nil else {
                print("no response from \(request)")
                return
            }
            guard let data = data else {
                print("no data")
                return
            }
            
            let responseObj = try! JSONDecoder().decode(T.self, from: data)
            DispatchQueue.main.async {
                completion(.success(responseObj))
            }
        }
        dataTask.resume()
    }
    
}
