# Pattern Matching Exercises
1. Which one of the following will match?
   - a=[1,2,3]
   - a=4
   - 4=a
   - [a,b]=[1,2,3]
   - a= [[1,2,3]]
   - [a]=[[1,2,3]]
   - [[a]]=[[1,2,3]]
 
   __Solution__
      - `a=[1,2,3]` will match. his will match. The variable `a` will be bound to the list `[1, 2, 3]`.
      - `a=4` will not match. The variable `a` cannot be bound to the value `4` because it was previously bound to a list.
      - `4=a` will not match. The value `4` cannot be bound to the variable `a` because it was previously bound to a list.
      - `[a,b]=[1,2,3]` will not match. The pattern `[a, b]` expects a list with exactly two elements, but the list on the right side has three elements.
      - `a= [[1,2,3]]` will match. The variable `a` will be bound to the list `[[1, 2, 3]]`.
      - `[a]=[[1,2,3]]` will match. The variable `a` will be bound to the list `[1, 2, 3]`.
      - `[[a]]=[[1,2,3]]` will match. The variable `a` will be bound to the value 1. 

2. Which one of the following will match?
   - [a,b,a]=[1,2,3]
   - [a,b,a]=[1,1,2]
   - [a,b,a]=[1,2,1]

   __Solution__
      - `[a,b,a]=[1,2,3]` will not match. The pattern `[a, b, a]` expects a list with three elements, where the first and third elements are the same. However, the list on the right side `[1, 2, 3]` does not satisfy this condition.
      - `[a,b,a]=[1,1,2]` will not match. The pattern `[a, b, a]` expects a list with three elements, where the first and third elements are the same. However, the list on the right side `[1, 1, 2]` does not satisfy this condition.
      - `[a,b,a]=[1,2,1]` will match. The variable `a` will be bound to the value 1, and `b` will be bound to the value 2. Since the first and third elements of the list `[1, 2, 1]` are both 1, the pattern matching succeeds.

3. The variable `a` is bound to the value 2. Which one of the following will match?
   - [a,b,a]=[1,2,3]
   - [a,b,a]=[1,1,2]
   - a=1
   - ^a=2
   - ^a=2-a

   **Solution**
      - `[a,b,a]=[1,2,3]` will not match. The variable `a` is already bound to 2, it cannot be matched with 1 in the list `[1, 2, 3]`.
      - `[a,b,a]=[1,1,2]` will not match. The variable `a` cannot be matched with 1 in the list `[1, 1, 2]` because it is already bound to 2.
      - `a=1` will not match. The value of `a` is already bound to 2, so it cannot be rebound to 1.
      - `^a=2` will match. The `^` (pin operator) is used to match the value that a is currently bound to. Since `a` is already bound to 2, the pattern matching succeeds.
      - `^a=2-a` will not match. The right side of the equation evaluates to `0` (2 - 2), which is different from the value of a (2). 