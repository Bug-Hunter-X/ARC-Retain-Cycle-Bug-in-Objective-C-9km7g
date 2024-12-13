The solution involves ensuring proper release of the referenced object in the custom `dealloc` method, breaking the retain cycle.  We use `self.referencedObject = nil;` inside the `dealloc` method to remove the strong reference before the object is deallocated.

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) AnotherClass *referencedObject;
@end

@implementation MyClass
- (void)dealloc {
    self.referencedObject = nil; // Crucial line to break the retain cycle
    NSLog(@"MyClass deallocated");
}
@end
```

By setting the reference to `nil` the strong reference is broken and the deallocation process can happen correctly.