class FundingRound
attr_accessor :startup, :venture_capitalist, :type, :investment
@@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    raise "Investment can't be negative" unless investment >= 0
    @investment = investment
    @@all << self
  end

  def self.all
    @@all
  end

end
