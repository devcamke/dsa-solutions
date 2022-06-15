class Node
    attr_accessor :value, :next
  
    def initialize(value, next_node)
        @value = value
        @next = next_node
    end
  end
  
class LinkedList

    def initialize(value)
      @head = Node.new(value, nil)
    end
  
    def add_to_list(value)
      current_node = @head
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = Node.new(value, nil)
    end
  
    def delete(value)
      current_node.next = @head
      if current_node.value = value
        @head = current_node.next
      else
        while (current_node.next != nil) && (current_node.next.val != val)
          current_node = current_node.next
        end
        unless current_node.next == nil
          current_node.next = current_node.next.next
        end
      end
    end
  
    def return_list
      elements = []
      current_node = @head
      while current_node.next != nil
        elements << current_node
        current_node = current_node.next
      end
      elements << current
    end
  end