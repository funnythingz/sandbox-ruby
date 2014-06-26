# 変数

hello = 'hello'
p hello

# クラス変数

class Hoge

    @@foo = "foo"

    def getFoo
        return @@foo
    end
end

class SubHoge < Hoge
end

hoge = Hoge.new
p hoge.getFoo

subHoge = SubHoge.new
p subHoge.getFoo


# インスタンス変数

class Hage

    attr_reader :hage

    def initialize
        @hage = "hage"
    end

    def getHage
        return @hage
    end

    def setHage(arg)
        @hage = arg
    end

end

hage = Hage.new
p hage.hage
p hage.getHage
p hage.setHage("hage2")
p hage.getHage

# クラスインスタンス変数

class Fuge

    @fuge = "fuge"

    def self.getFuge
        return @fuge
    end

    def self.say(arg)
        return arg
    end

end

class SubFuge < Fuge; end

p Fuge.getFuge
p Fuge.say("a")
p Fuge.say("b")
p Fuge.say("c")

p SubFuge.getFuge  #-> nil
p SubFuge.say("a")
