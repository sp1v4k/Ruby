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

  def to_list(list_language)
    list_language.each do |pl|
      puts "Name: #{pl.name} Age: #{pl.age}  Type: #{pl.type}"
    end
  end

  def age_update(list_language)
    list_language.map do |pl|
      pl.age += 1
      pl
    end
  end

  def sort_by_creation(list_language)
    list_language.sort do |pl, pl1|
      pl.age <=> pl1.age
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
list = List.new
list.to_list(programming_languages)
#list_updated = list.age_update(programming_languages)
#list.to_list(list_updated)
list_sorted = list.sort_by_creation(programming_languages)
list.to_list(list_sorted)
