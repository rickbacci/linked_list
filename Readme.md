Write an implementation of a linked list which can at least do all of the following:

* "append" elements to the end of the list
* Count the number of the elements in the list
* access the "tail" (last element) of the list
* "pop" an element from the end of the list
* access an element by numeric position (as with an array index)

A linked list it not an array.
While it may perform many of the same functions as an array, its structure is conceptually very different.

There are only 3 types of "state" that need to be tracked for a linked list --
the head of the list,
the data of each node,
and the "next node" of each node.

In object-oriented programming, "state" is generally modeled with instance variables

There are two main ways to implement Linked Lists: iteration and recursion. Iterative solutions use looping structures (while, for) to walk through the nodes in the list. Recursive solutions use methods which call themselves to walk through nodes. It would be ideal to solve it each way.
Most of your methods will be defined on the List itself, but you will need to manipulate one or more Nodes to implement them.

TDD will be your friend in implementing the list.
Remember to start small, work iteratively,
and test all of your methods.
An empty list has nil as its head

The tail of a list is the node that has nil as its next node
