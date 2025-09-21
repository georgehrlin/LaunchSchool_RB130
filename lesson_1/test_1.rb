# Problem 2:

module Times
  HRS_PER_DAY = "we're in Times"

  def namespace_ref
    p Module.nesting
    p self.class
    p self.class::HRS_PER_DAY
  end

  def ref
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

Timepieces::Clock.new.namespace_ref # NameError
