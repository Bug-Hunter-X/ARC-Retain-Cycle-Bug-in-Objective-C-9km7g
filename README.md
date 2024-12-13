# Objective-C ARC Retain Cycle Bug

This repository demonstrates a common error in Objective-C related to Automatic Reference Counting (ARC) and custom memory management. Improperly implemented retain and release methods, particularly in custom `dealloc` methods, can lead to retain cycles that prevent objects from being deallocated, resulting in memory leaks and application instability.

**BuggyRetainCycle.m** shows the flawed implementation, causing the retain cycle.  **FixedRetainCycle.m** demonstrates how to resolve this issue using proper memory management techniques within ARC.

This example highlights the importance of understanding ARC's behavior and carefully implementing custom memory management to avoid these subtle but critical errors.

## How to Reproduce

1. Clone the repository.
2. Compile and run the buggy example to observe memory leakage (you may need memory monitoring tools). 
3. Compare it to the fixed example to observe the correct memory management.