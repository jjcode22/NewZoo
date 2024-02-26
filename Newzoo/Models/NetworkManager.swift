//
//  NetworkManager.swift
//  Newzoo
//
//  Created by JJ on 22/02/24.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func getData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?query=foo&tags=story"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                        
                    }
                    
                }
            }
            task.resume()
        }
        
    }
}
