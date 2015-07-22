# コインを投げて結果を記録するクラス。
class Hantei
  def initialize(coin)
    @coin = coin
    @result = Result.new
  end
  # コインを n 回投げる。
  def nageru(n)
    omote_num = 0 # 表が出た回数
    for i in 0...n
      @coin.nageru
      omote_num += 1 if @coin.omote
    end
    # n 回中表が出た割合を結果として記録する。
    @result.add(omote_num / n.to_f * 100)
  end
  # コインを n 回投げることを x 回繰り返す。
  def repeat(x,n)
    puts "コインを #{n} 回投げる試行を #{x} 回繰り返します。"
    for i in 0...x
      nageru(n)
    end
  end
  # 結果を表示する。
  def result
    @result.print
  end
end

# 結果を保持するクラス。
class Result
  def initialize
    @results = []   # 結果の配列
    @counter = Counter.new  # 集計をするためのもの
  end
  # 結果を追加する
  def add(result)
    @results << result
  end
  # 結果を設定した基準で集計する
  def analyze
    @results.each do |result|
      @counter.add(result)
    end
  end
  # 結果を表示する。
  def print
    analyze
    @counter.result
  end
end

# 結果を集計するためのクラス
class Counter
  INTERVAL = 10
  include Enumerable
  def initialize
    @counterUnits = []
    setCriterion
  end
  # 集計のための基準を設定する
  def setCriterion
    @counterUnits << CounterUnit.new(0,15)
    for i in 0..6
      @counterUnits << CounterUnit.new(15+INTERVAL*i, 15+INTERVAL*i+INTERVAL)
    end
    @counterUnits << CounterUnit.new(85,100)
  end
  def each
    @counterUnits.each do |counterUnit|
      yield counterUnit
    end
  end
  # 結果を追加する
  def add(result)
    @counterUnits.find { |counterUnit|
      counterUnit.lowerLimit <= result and 
        counterUnit.upperLimit >= result
    }.countUp
  end
  # 集計の結果を表示する
  def result
    @counterUnits.each do |counterUnit|
      printf("%2d -%3d%% : %3d\n",
             counterUnit.lowerLimit, 
             counterUnit.upperLimit, 
             counterUnit.counter)
    end
  end

  # 集計のための個々のカウンター
  class CounterUnit
    attr_reader :lowerLimit, :upperLimit, :counter
    def initialize(lowerLimit, upperLimit)
      @lowerLimit = lowerLimit
      @upperLimit = upperLimit
      @counter = 0
    end
    def countUp
      @counter += 1
    end
  end
end
