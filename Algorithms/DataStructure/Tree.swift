//
//  Tree.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 25/03/19.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation


// Height of binary tree is min height = logn and maximum = n

// this is problem of binary tree height is not under control // so for that AVL Tree come in picture


// AVL Tree self balancing binary search tree// height diffrent between left and write tree not more than one

// balance sub factor = height of left subtree - height of right subtree <= {0,-1,1}

// Just like height balance tree one more tree height balance tree

// Red Balck tree (min rotation compaire to AVL Tree)


class TreeNode<T> {
    var data: T!
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(data: T) {
        self.data = data
    }
    
    func addNode() {
        
    }
}


class BinaryTree {
    var rootNode: TreeNode<Int>?
    
    func addNode(_ value: Int) {
        let node = TreeNode(data: value)
        if let rootNode = self.rootNode {
            self.insert(rootNode, node)
        } else {
            self.rootNode = node
        }
    }
    
    
    private func insert(_ root: TreeNode<Int>, _ node: TreeNode<Int>) {
        if root.data > node.data {
            if let leftNode = root.leftNode {
                self.insert(leftNode, node)
            } else {
                root.leftNode = node
            }
        } else {
            if let rightNode = root.rightNode {
                self.insert(rightNode, node)
            } else {
                root.rightNode = node
            }
        }
    }
    
    private func inorder(_ node: TreeNode<Int>?) {
        guard let _ = node else { return }
        self.inorder(node?.leftNode)
        print("\(node!.data)", terminator: " ")
        self.inorder(node?.rightNode)
    }
}


class BinaryTreeImpl {
    static let shared: BinaryTreeImpl = BinaryTreeImpl()
    let bst: BinaryTree!
    
    private init() {
        self.bst = BinaryTree()
        self.bst.addNode(5)
        self.bst.addNode(3)
        self.bst.addNode(7)
        self.bst.addNode(2)
        self.bst.addNode(4)
        self.bst.addNode(6)
        self.bst.addNode(9)
        
       let output =  Inordertriversing()
        output.inorder(self.bst.rootNode)
        print(output.otputArray)
    }
    
    // question: 1 --> delete a node from Balanced BST
    
    func delete(nodes: inout TreeNode<Int>?, data: Int) {
        guard let node = nodes else {return}
        if data > node.data {
            delete(nodes: &node.leftNode, data: data)
        } else if data < node.data {
            delete(nodes: &node.rightNode, data: data)
        } else if data == node.data {
            if node.leftNode == nil && node.rightNode == nil { return nodes = nil }
            else if node.leftNode != nil && node.rightNode == nil  { nodes = node.leftNode }
            else if node.leftNode == nil && node.rightNode != nil  { nodes = node.rightNode }
            else if node.leftNode != nil && node.rightNode != nil {
                // Find minmume value for right side
                //  Or Find Maximume value for left side
                // and delete this node
            }
        }
        
        
        
        // no
        
        
    }
    
    
    // question: 1 --> Sorted Array to Balanced BST
    
    
    // question: 2 --> Sorted LinkList to Balanced BST
    
    
    // question: 3 --> Transform a BST to greater sum tree (Need to read artical or tutorial on it)
    
    // question: 4 --> Construct all possible BSTs for keys 1 to N
    
    // question: 5 --->  Find the node with minimum value in a Binary Search Tree
    
    
    // question: 6 ---> Check if the given array can represent Level Order Traversal of Binary Search Tree
    
    // question: 7 ---> Check if a given array can represent Preorder Traversal of Binary Search Tree
    
    
    // question: 8 ---> Lowest Common Ancestor in a Binary Search Tree.😀😀😀😀😀😀(Fuddu)
    
    func lowestAncestor(first: Int, second: Int) -> Int? {
        
        if self.bst.rootNode == nil {
            return nil
        }
        
        var node = self.bst.rootNode
        while node != nil {
            if node!.data > first &&  node!.data > second {
                node = node?.leftNode
            } else if  node!.data < first &&  node!.data < second {
                node = node?.rightNode
            } else {
                return node?.data
            }
        }
        return nil
    }
    
    
    // question: 9 ---> A program to check if a binary tree is BST or not
    
    
    // WRONG CHECK
    func isBinaryTreeBST(node: TreeNode<Int>?) -> Bool {
        
        guard let node = node else {
            return true
        }
        
        if let leftNode = node.leftNode, leftNode.data > node.data {
            return false
        }
        
        if let rightNode = node.rightNode, rightNode.data < node.data {
            return false
        }
        
        if !isBinaryTreeBST(node: node.leftNode) || !isBinaryTreeBST(node: node.rightNode) {
            return false
        }
        
        return true
    }
    
    // B. For each node, check if max value in left subtree is smaller than the node and min value in right subtree greater than the node
    
    
    // question: 10 ---> Convert BST to Min Heap
    
    
    // question: 11 ---> Convert BST to Min Heap
    
    // question: 12 ---> Check for Identical BSTs without building the trees
    
    // question: 13 ---> Count the Number of Binary Search Trees present in a Binary Tree
       // 1-  Answer is = B[0]*B[N-1]...............B[N-1][0] [number of binary tree present in it]
      //  N   Answer is = B[0]*B[N-1]...............B[N-1][0] Add for all tree for nodes
    
    
    // question: 14 --> k largest(or smallest) elements in an array | added Min Heap method
      // a. --> Use Bubble k times Time Complexcity(O(nk))
     //  b. ---> Using Selection short for K Time (O(nk))
     //  c. ---> Using Two Array Devidation Time Complecity O(nk)
     //  d. ---> USing Max Heap O(n + klogn) where O(n) for creating Max heap and Klog(n)  k maximum elements from the Max Heap
     //  e. --> USing MinHeap O(n) very intrecting approche I hope You Think about it
    
    // question: 15 --> Pythagorean Triplet in an array
    
    // question: 16 ---> Level Order Traversal of Binary Tree
    
    
    // question: 17 ---> Spiral Order Traversal of Binary Tree
    
    // question: 18 ----> Find a pair with given sum in a Balanced BST
      // 1. Create a shorted array by using in order triversing
      // after
    
  
    
    
    
    
    
    class Inordertriversing {
        var otputArray: [Int] = []
        
        
        func inorder(_ node: TreeNode<Int>?) {
            guard let _ = node else { return }
            self.inorder(node?.leftNode)
            print("\(node!.data)", terminator: " ")
            otputArray.append(node!.data)
            self.inorder(node?.rightNode)
        }
        
    }
    
    
}
