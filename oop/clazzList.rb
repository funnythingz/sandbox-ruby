module ClazzList

    class SuperClazz
        def initialize(arg)
            @superStr = arg
        end

        def say
            return @superStr
        end
    end

    class SubClazz < SuperClazz
        def initialize
            super("super")
            @param1 = "#{@superStr} Hello"
        end

        def func
            return "#{@param1} world"
        end
    end

end
