//
//  ConversionCalculator.swift
//  ConversionCalculator
//
//  Created by Danae N Nash on 6/25/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import Foundation

class ConversionCalculator {
    var converters: [Converter]
    var currentConverterIndex: Int
    init() {
        converters = [Converter(label: "Fahrenheit to Celsius",inputUnit: "°F", outputUnit: "°C"),
                      Converter(label: "Celsius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                      Converter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
                      Converter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
        currentConverterIndex = 0
    }
    
    func currentConverter() -> Converter {
        return converters[currentConverterIndex]
    }
    
    func convert(input: Float) -> Float {
        switch currentConverterIndex {
        case 0: //fahrenheit->celsius
            return (input-32)*(5/9)
        case 1: //celsius->fahrenheit
            return (input*(9/5)+32)
        case 2: //miles->kilometers
            return (input*1.609344)
        case 3: //kilometers->miles
            return (input/1.609344)
        default:
            return 0
        }
    }
}
