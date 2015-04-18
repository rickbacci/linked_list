Tips

A linked list it not an array.

There are only 3 types of "state" that need to be tracked for a linked list

* the head of the list,
* the data of each node,
* the "next node" of each node.


Most of your methods will be defined on the List itself,
but you will need to manipulate one or more Nodes to implement them.

TDD will be your friend in implementing the list.
Remember to start small, work iteratively,
and test all of your methods.

* An empty list has nil as its head
* The tail of a list is the node that has nil as its next node


Each element (we will call it a node) of a list is comprising of two items:
* the data
* reference to the next node.

* The last node has a reference to null.

* The entry point into a linked list is called the head of the list.

## It should be noted that head is not a separate node,
## but the reference to the first node.

If the list is empty then the head is a null reference.

[     node    ]
[ data - next ]

head points to 'nil'  --- when list is empty

head points to 1st node...1st node points to nil

head points to 1st node...1st node points to 2nd node
                          2nd node points to nil

head points to 1st node...1st node points to 2nd node
                          2nd node points to 3rd node
                          3rd node points to nil


to insert
[new_node.next] points to pointer.next
pointer.next points to [new_node]

to delete
pointer.next = pointer.next.next
