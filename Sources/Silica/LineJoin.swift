//
//  LineJoin.swift
//  Silica
//
//  Created by Alsey Coleman Miller on 5/9/16.
//  Copyright © 2016 PureSwift. All rights reserved.
//

import Cairo
import CCairo

public enum LineJoin: UInt32 {
    
    case Miter
    case Round
    case Bevel
    
    public init() { self = .Miter }
}

// MARK: - Cairo Conversion

extension LineJoin: CairoConvertible {
    
    public typealias CairoType = cairo_line_join_t
    
    public init(cairo: CairoType) {
        
        self.init(rawValue: cairo.rawValue)!
    }
    
    public func toCairo() -> CairoType {
        
        return CairoType(rawValue: rawValue)
    }
}
