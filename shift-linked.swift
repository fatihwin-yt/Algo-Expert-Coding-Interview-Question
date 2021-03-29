











class Program {
  class LinkedList {
    var value: Int
    var next: LinkedList?

    init(value: Int) {
      self.value = value
      next = nil
    }
  }

  static func shiftLinkedList(_ head: LinkedList, _ k: Int) -> LinkedList? {
   var listLength = 1 
		var listTail = head
    
	while let next = listTail.next{
	listTail​ = next
		listLength += 1
	}
	var offset = abs(k) % listLength
	if offset == 0{
	return head
	}
	var newTailPosition = listLength - offset
	if k <= 0{
	newTailPosition = offset
	}
		var newTail: LinkedList = head
		for i in 1 ..< newTailPosition {
		newTail = newTail.next!
		}
		var newHead = newTail.next
		newTail.next = nil
		listTail.next = head
		return newHead
  }
}