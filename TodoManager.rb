
class TodoManager
  @@todos = ["Buy some milk", "Feed the cat"] # two @ signs means its a class variable not an instance variable
  
  def self.index # will return everything in the array
    @@todos
  end
  
  def self.show (id) #use index position with the id
    @@todos[id]
  end

  def self.create (new_todo)
    # @@todos.push(new_todo)
    @@todos << new_todo #shovel. will do the same thing as above
  end
  
  def self.delete (id) # self. allows us to access the variables.
    @@todos.delete_at(id)
  end
  
  def self.update (id, new_todo)
    @@todos[id] = new_todo
  end
  
end