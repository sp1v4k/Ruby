require "pry"

class ProgrammingLanguage
  attr_accessor :name, :age, :type

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

end

class List
  attr_reader :list_language

  def initialize(list_language)
    @list_language = list_language
  end

  def to_list
    @list_language.each do |pl|
      puts "Name: #{pl.name} Age: #{pl.age}  Type: #{pl.type}"
    end
  end
end


ruby = ProgrammingLanguage.new("Ruby", 21, "dynamic")
python = ProgrammingLanguage.new("Python", 24, "dynamic")
javascript = ProgrammingLanguage.new("Javascript", 20, "dynamic")
go = ProgrammingLanguage.new("Go", 6, "static")
rust = ProgrammingLanguage.new("Rust", 5, "static")
swift = ProgrammingLanguage.new("Swift", 2, "static")
java = ProgrammingLanguage.new("Java", 20, "static")

programming_languages = [ruby, python, javascript, go, rust, swift, java]
list = List.new(programming_languages)
list.to_list
