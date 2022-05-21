//
//  Network Manager.swift
//  H4ckerNews
//
//  Created by Iris Medical Solutions on 20/05/22.
//

import Foundation

class NetworkManager : ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error)
                }else{
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                           let result = try decoder.decode(Results.self, from: data)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                            print(result)
                        }catch {
                            print("errr")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
