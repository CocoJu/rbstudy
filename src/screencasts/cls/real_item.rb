class RealItem < Item

  attr_reader :weight

  def self.discount
    if Time.now.month == 3
      0.2
    else
      0.1
    end
  end

  def initialize(options)
    @weight = options[:weight]
    super
  end

  def info
    yield(weight)
    super
  end
end