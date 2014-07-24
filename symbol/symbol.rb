p "abc"
p :abc

symbol = {
    :hoge => "ahya1",
    "hoge" => "ahya2"
}
p symbol
p symbol[:hoge]
p symbol["hoge"]

p symbol === symbol
p symbol.equal?(symbol)
