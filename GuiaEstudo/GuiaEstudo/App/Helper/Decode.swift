//
//  Decode.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

final class Decode {
    
    static func from<T: Decodable>(_ resource: String,
                                   withExtension: String,
                                   bundle: Bundle = Bundle.main) -> T? {
        
        guard let url = bundle.url(forResource: resource, withExtension: withExtension) else {
            return nil
        }
        
        do {
            
            let data = try Data(contentsOf: url, options: .alwaysMapped)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let result = try decoder.decode(T.self, from: data)
            return result
        } catch let error {
            print("Decode error \(error)")
            return nil
        }
    }
    
}
