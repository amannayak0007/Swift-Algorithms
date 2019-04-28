//
//  ViewController.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 23/10/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import UIKit




let questions = ["How to implement a stack using queue?",
                 "Median of two sorted arrays of equal size",
                 "Topological sort",
                 "Find the middle of a given linked list",
                 "Print spiral form of matrix",
                 "Priority Queue",
                 " Reverse a Linked List",
                 " Design stack which gives min/max value in O(1)",
                 "Word Break Problem",
                 " Add 1 to a number without using any arthmatic operators like + - / * ... (",
                 "Given array find if some element exists more than n/2 times",
                 "N ary tree ...whether one node is anscestor of another(DFS)",
                 "Add to decimal numbers represented as strings",
                 "Adding two large number",
                 "Multiply two large number (Done)",
                 "Find 1 million most reoccurring words from a file 1 billion words",
                 "Add two numbers represented as linked list",
                 "Median in a infinite stream on integers",
                 "Detect and remove loop from linked list",
                 "Infinite stream of numbers find max number within n minutes using Max heap ",
                 "Serialise and deserialise binary tree",
                 "https://www.geeksforgeeks.org/stock-buy-sell/",
                 " Zig zag traverssal",
                 " Left side view of a tree",
                 " Level by Level Printing of Binary Tree",
                 " Level order traversal",
                 "Delete current node in linked list",
                 "Find kth smallest element in array",
                 " Infix , Postfix",
                 " Given in-order",
]

class QuestionViewController: UIViewController {
    
    var parentob: Parent?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonClicked(_ sender: Any) {
        self.parentob = Parent()
    }
    
    @IBAction func nilClicked(_ sender: Any) {
        self.parentob = nil
    }
}


extension QuestionViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = questions[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
     }
    
    
    
}


class Parent {
    var child: Child!
    
    init() {
        self.child = Child(parent: self)
    }
 }


class Child {
    var parent: Parent!
    init(parent: Parent) {
        self.parent = parent
    }
}
