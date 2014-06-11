require "./clazzList"

class App
    def initialize
        clazz = ClazzList::Clazz.new
        puts(clazz.func1)
    end
end

App.new
