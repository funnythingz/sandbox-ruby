require "./clazzList"

class App
    def initialize

        superClazz = ClazzList::SuperClazz.new("hoge")
        puts(superClazz.say)

        subClazz = ClazzList::SubClazz.new
        puts(subClazz.func)

    end
end

App.new
