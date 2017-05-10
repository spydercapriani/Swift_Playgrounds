import Foundation


public struct testCase {
    public let id:Int
    public let beginWord:String
    public let endWord:String
    public let wordList:[String]
    public let expectedOutput:Int
    public var output:Int
    
    public init(testCase: Int, beginWord:String, endWord:String, wordList:[String], expectedOutput:Int) {
        self.id = testCase
        self.beginWord = beginWord
        self.endWord = endWord
        self.wordList = wordList
        self.expectedOutput = expectedOutput
        self.output = 0
    }
    
    mutating func run(){
        self.output = wordLadder(beginWord: beginWord, endWord: endWord, wordList: wordList)
        
        if output != expectedOutput {
            print("Test #\(id) Failed!")
            print("\tOutput: \(output)")
            print("\tExpected Output: \(expectedOutput)\n")
        }else{
            print("Test #\(id) Passed!\n")
        }
    }
    
    func wordLadder(beginWord: String, endWord: String, wordList: [String]) -> Int {
        return 0
    }
}

public class Tests {
    var testCases:[testCase] = []
    
    public init(){
        
    }
    
    public init(testCaseList:[testCase]){
        self.testCases = testCaseList
    }
    
    public func addTestCase(beginWord:String, endWord:String, wordList:[String], expectedOutput:Int){
        let newTestCase = testCase.init(testCase: testCases.count + 1, beginWord: beginWord, endWord: endWord, wordList: wordList, expectedOutput: expectedOutput)
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
