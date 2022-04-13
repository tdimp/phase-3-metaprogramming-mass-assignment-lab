require "pry"

class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = {name: "Bob", hair_color: "Brown"}
susan_attributes = {name: "Susan", height: "5'11\"", eye_color: "Green"}

binding.pry