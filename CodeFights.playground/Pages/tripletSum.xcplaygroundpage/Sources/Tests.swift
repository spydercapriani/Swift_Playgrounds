import Foundation

public struct testCase {
    public let id:Int
    public let sum:Int
    public let elements:[Int]
    public let expectedOutput:Bool
    public var output:Bool
    
    public init(testNum:Int, sum:Int, elements:[Int], expectedOutput:Bool){
        self.id = testNum
        self.sum = sum
        self.elements = elements
        self.expectedOutput = expectedOutput
        self.output = false
    }
    
    mutating func run() {
        self.output = tripletSum(x: sum, a: elements)
        
        if output != expectedOutput {
            print("Test #\(id) Failed!")
            print("\tOutput: \(output)")
            print("\tExpected Output: \(expectedOutput)\n")
        }else{
            print("Test #\(id) Passed!\n")
        }
    }
    
    func tripletSum(x: Int, a: [Int]) -> Bool {
        return false
    }
}

public class Tests {
    var testCases:[testCase] = []
    
    public init(){
        
    }
    
    public init(testCaseList:[testCase]){
        self.testCases = testCaseList
    }
    
    public func addTestCase(x:Int, a:[Int], expectedOutput:Bool){
        let newTestCase = testCase.init(testNum: testCases.count + 1, sum: x, elements: a, expectedOutput: expectedOutput)
        testCases.append(newTestCase)
        print("Test Case #\(newTestCase.id) added")
    }
    
    public func getTestCase(id:Int) -> testCase {
        let test = testCases[id-1]
        return test
    }
    
    public func runAllTests(){
        for var test in testCases {
            test.run()
        }
    }
}
