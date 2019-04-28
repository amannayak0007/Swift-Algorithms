//
//  RaceCondition.swift
//  Algorithms
//
//  Created by Abhishek Tripathi on 22/05/2019.
//  Copyright © 2019 Abhishek Tripathi. All rights reserved.
//

import Foundation

class RaceAroundCondition {
    // A race condition happens when two or more threads access a shared data and change it’s value at the same time
    // ----> Using NSLock
    // ----> Using RecursiveLock
    // ----> Using Serial Queue
    // ----> Dispatch Barrier
    
   /*
    While Thread1 is executing, it acquired a lock to access Function1(Lock1)
    Another thread (Thread2) is executing in parallel, it acquired another lock synchronizing access to Function2 (Lock2)
    Before releasing Lock1, Thread1 tries to access Function2, so it needs to wait for Lock2 to be released.
    Before releasing Lock2, Thread2 tries to access Function1, so it needs to wait for Lock1 to be released.
    Now Thread1 has Lock1 and waiting for Thread2 to release Lock2, but Thread2 will not release Lock2 until Lock1 is released first. Resulting in both threads waiting for each other forever. A deadlock.
    */
 }


class PriorityInversion {
    //Priority inversion happens when low priority tasks lock a resource needed by a higher priority task
}


class DedLock {
    //Deadlocks happens when two threads are waiting for each other to release a shared resource
    
    
    
    
}
