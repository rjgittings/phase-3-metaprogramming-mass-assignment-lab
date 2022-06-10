class Person
    def initialize(attributes = nil)
      if attributes
      attributes.each do |key, value|
        # create a getter and setter by calling the attr_accessor method
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
end
