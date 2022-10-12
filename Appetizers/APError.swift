//
//  APError.swift
//  Appetizers
//
//  Created by Adam Gerber on 10/11/22.
//

import Foundation

enum APError: Error {
    case invalidURL,
         invalidResponse,
         invalidData,
         unableToComplete
}
