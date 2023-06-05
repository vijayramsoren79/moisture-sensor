#Doubly Linked List

class Node:
    def __init__(self,data):
        self.data = data
        self.next = None
        self.prev = None

class DLL:
    def __init__(self):
        self.head = None

    def emptyMessage(self):
        print("Doubly Linked List is Empty")
        
    def is_Empty(self):
        return self.head is None

    def prepend(self,data):
        new_node = Node(data)

        if self.is_Empty():
            self.head = new_node

        else:
            new_node.next = self.head
            self.head.prev = new_node
            self.head = new_node

    def append(self,data):
        new_node = Node(data)

        if self.is_Empty():
            self.head = new_node

        else:
            current = self.head
            while current.next:
                current = current.next
            current.next = new_node
            new_node.prev = current

    #delete specific node
            
    def delete(self,data):
        if self.is_Empty():
            self.emptyMessage()
            return
        
        if self.head.data == data:
            if self.head.next:
                self.head = self.head.next
                self.head.prev = None
            else:
                self.head = None
            return
        
        current = self.head
        
        while current:
            
            
            if current.next.data == data:
                
                current.next = current.next.next
                
                if current.next:
                    current.next.prev = current
                    return
            
            current = current.next
            
            
            
            
            
        
                
                
        
    def deleteLast(self):
        if self.is_Empty():
            self.emptyMessage()
            return
        current = self.head
        while current.next != None:
            #print(last.data,end = " ")
            current = current.next
        print(current.data)
        current.prev.next = None
        current.prev = None
        
        
        
        
        
    def display(self):
        if self.is_Empty():
            print("Doubly Linked List is Empty")
            return
        current = self.head
        while current:
            print(current.data,end = " ")
            current = current.next
        print()


if __name__ == "__main__":
    l = DLL()

    for i in range(6):
        l.prepend(i)
    #prepend
    print("Prepend:")
    l.display()
    l.delete(2)
    l.display()



    for i in range(6):
        l.append(i)
    #append
    print("\nAppend:")
    l.display()

    #delete
    print("\nAfter deleting the node:")
    l.delete(5)
    l.display()
    
    #delete
    print("\nAfter deleting last node:")
    l.deleteLast()
    l.deleteLast()
    l.display()

