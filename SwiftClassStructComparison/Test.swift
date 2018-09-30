//
//  PersonTest.swift
//  SwiftClassStructComparison
//
//  Created by Eduardo Carminati on 30/09/2018.
//  Copyright © 2018 Eduardo Carminati. All rights reserved.
//

import UIKit

class Test {
    static func run() {
        
        var clazz = time("create ten million PersonClass") {
            var ref = createPersonClass()
            for _ in 1...10000000 {
                let _ = ref.name;
                let _ = ref.address;
                ref = createPersonClass()
            }
        }
        var struc = time("create ten million PersonStruct") {
            var ref = createPersonStruct()
            for _ in 1...10000000 {
                let _ = ref.name
                let _ = ref.address
                ref = createPersonStruct()
            }
        }
        
        var diff = clazz / struc
        print("struct is \(diff) times faster")
         print()
        
         clazz = time("create ten million IntClass") {
            var ref = IntClass(value: 0)
            for _ in 1...10000000 {
                ref = IntClass(value: ref.value + 1)
            }
        }
         struc = time("create ten million IntStruct") {
            var ref = IntStruct(value: 0)
            for _ in 1...10000000 {
                ref = IntStruct(value: ref.value + 1)
            }
        }
        
         diff = clazz / struc
        print("struct is \(diff) times faster")
        print()
    }
    
}

func time(_ description: String, action: @escaping () -> ()) -> CFTimeInterval {
    print()
    print("---------------------------------------")
    print("executing '\(description)...'")
    let startTime = CACurrentMediaTime();
    action()
    let totalTime = CACurrentMediaTime() - startTime;
    print("took \(totalTime) seconds")
    print("---------------------------------------")
    return totalTime
}
