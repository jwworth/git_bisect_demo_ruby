module HelloWorld

  # Greets the user by name, or by saying "Hello, World!" if no name is given.
  class << self
    def hello(name)
      "Hello, #{name}!"
    end
  end
end
