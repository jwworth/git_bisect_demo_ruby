module HelloWorld

  class << self
    # Greets the user by name, or by saying "Hello, World!" if no name is given.
    def hello(name)
      "Hello, #{name}!"
    end
  end

end
