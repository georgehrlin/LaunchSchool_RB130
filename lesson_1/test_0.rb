# Problem 1:

module Times
  HRS_PER_DAY = "we're in Times"

  def namespace_ref
    p self.class::HRS_PER_DAY
  end

  def ref
    p Module.nesting
    p HRS_PER_DAY
  end
end

module Timepieces
  HRS_PER_DAY = "we're in Timepieces"

  class Clock
    include Times

    def say_hours
      p HRS_PER_DAY
    end
  end
end

Timepieces::Clock.new.ref # => "we're in Times"
