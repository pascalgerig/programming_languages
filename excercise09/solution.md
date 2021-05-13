# Excercise
####  1. What is the difference between subtyping and subclassing?
The difference is that with subclassing, we extend the superclasses behaviour, 
while with subtyping we add a more specific type that behaves exactly like the super type.
E.g. in Java a class that exactly implements one Interface, is a subtype of this Interface, since it behaves in the exact specified way but is of more specific Type.
If that class however extends another Class, then its subclassing because the behaviour is extended.

#### 2. Using the Java class-interface hierarchy, explain what is the relationship between classes and interfaces.
We learned that classes refer to a polymorphic family of types, and the actual type is one member of this family.
javax.net.ssl.X509ExtendedKeyManager creates a new family of types, and implements both interfaces javax.net.ssl.X509KeyManager and javax.net.ssl.KeyManager.
Both interfaces are substitutable because javax.net.ssl.X509KeyManager is a subtype of javax.net.ssl.KeyManager.  
javax.net.ssl.X509ExtendedKeyManager is a subclass of java.lang.Object and could also be a subtype of it, if the record extension and the contravariant subtyping rules are obeyed.
Otherwise, it is just a subclass.

#### 3. Which forms of polymorphism are used in the Java code?
Hint 1: coercion polymorphism, because we plug an Integer `a` in a place where a Float is expected.

Hint 2: parametric polymorphism, because the class `Bern` has a parameter Class that we can choose freely when instantiating an Object

System.out.println (You forgot Hint 3 :P): Overloading, since `out` has different `println` methods for different possible Input types

#### 4. In the Java code, explain what concept (covariance or contravariance) exists and why.
Java Arrays are covariant. If you have an Array `T[]` you can put any element of type `T` in and when accessing the array slot you will get an element of Type `T` back,
meaning domain and subdomain for this array are both `T`.
Specifically in the code snippet, we assign a `Double` array to a `Number` array variable, meaning that both Domain and Codomain are subtyped here.
We can beautifully illustrate the not safeness of covariant subtyping by assigning a float to the number array:
```java
public static void main(String[] args) {
    Double[] mh = new Double[2];
    mh[0] = 100.2;
    mh[1] = 200.2;

    Number[] nm = mh;
    nm[0] = 1000.5f; // This gives a runtime error

    System.out.println(nm[0]);
}
```

The assignment `nm[0] = 1000.5f;` should according to static typing work,
however `nm` is a double array at runtime, thus this gives a `java.lang.ArrayStoreException`