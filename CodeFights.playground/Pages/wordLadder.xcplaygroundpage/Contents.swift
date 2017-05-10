//: [Previous](@previous)

import Foundation

let testList:[testCase] = [
    testCase.init(testCase: 1, beginWord: "hit",
                  endWord: "cog",
                  wordList: ["hot",
                             "dot",
                             "dog",
                             "lot",
                             "log",
                             "cog"],
                  expectedOutput: 5),
    
    testCase.init(testCase: 2, beginWord: "hit",
                  endWord: "cog",
                  wordList: ["hot",
                             "dot",
                             "dog",
                             "lot",
                             "log"],
                  expectedOutput: 0),
    
    testCase.init(testCase: 3, beginWord: "a",
                  endWord: "c",
                  wordList: ["a",
                             "b",
                             "c"],
                  expectedOutput: 2),
    
    testCase.init(testCase: 4, beginWord: "hot",
                  endWord: "dog",
                  wordList: ["hot",
                             "dog"],
                  expectedOutput: 0),
    
    testCase.init(testCase: 5, beginWord: "hot",
                  endWord: "dog",
                  wordList: ["hot",
                             "cog",
                             "dog",
                             "tot",
                             "hog",
                             "hop",
                             "pot",
                             "dot"],
                  expectedOutput: 3),
    
    testCase.init(testCase: 6, beginWord: "hot",
                  endWord: "dog",
                  wordList: ["hot",
                             "dog",
                             "cog",
                             "pot",
                             "dot"],
                  expectedOutput: 3),
    
    testCase.init(testCase: 7, beginWord: "hit",
                  endWord: "cog",
                  wordList: ["hot",
                             "cog",
                             "dot",
                             "dog",
                             "hit",
                             "lot",
                             "log"],
                  expectedOutput: 5),
    
    testCase.init(testCase: 8, beginWord: "lost",
                  endWord: "cost",
                  wordList: ["most",
                             "fist",
                             "lost",
                             "cost",
                             "fish"],
                  expectedOutput: 2),
    
    testCase.init(testCase: 9, beginWord: "talk",
                  endWord: "tail",
                  wordList: ["talk",
                             "tons",
                             "fall",
                             "tail",
                             "gale",
                             "hall",
                             "negs"],
                  expectedOutput: 0),
    
    testCase.init(testCase: 10, beginWord: "kiss",
                  endWord: "tusk",
                  wordList: ["miss",
                             "dusk",
                             "kiss",
                             "musk",
                             "tusk",
                             "diss",
                             "disk",
                             "sang",
                             "ties",
                             "muss"],
                  expectedOutput: 5),
    
    testCase.init(testCase: 11, beginWord: "teach",
                  endWord: "place",
                  wordList: ["peale",
                             "wilts",
                             "place",
                             "fetch",
                             "purer",
                             "pooch",
                             "peace",
                             "poach",
                             "berra",
                             "teach",
                             "rheum",
                             "peach"],
                  expectedOutput: 4)
]

/*  Description:
 Given two words, beginWord and endWord, and a wordList of approved words, find the length of the shortest transformation sequence from beginWord to endWord such that:
 
 Only one letter can be changed at a time
 Each transformed word must exist in the wordList.
 Return the length of the shortest transformation sequence, or 0 if no such transformation sequence exists.
 
 Note: beginWord does not count as a transformed word. You can assume that beginWord and endWord are not empty and are not the same.
 
 Example:
 
 For beginWord = "hit", endWord = "cog", and wordList = ["hot", "dot", "dog", "lot", "log", "cog"], the output should be
 wordLadder(beginWord, endWord, wordList) = 5.
 
 The shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog" with a length of 5.
 */

let testKit = Tests(testCaseList: testList)
testKit.runAllTests()































//: [Next](@next)
