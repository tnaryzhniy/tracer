class Goal
  include Tracer

  def initialize(name, from:, to:)
    @name = name.to_s
    @from = from
    @to = to
  end

  def goal_name
    @name
  end

  def next_report(day = 0)
    @from + day
  end

  def new_om_to(new_name, from:, to:)
    p "new from: #{from}"
    p "new name: #{new_name}"
  end
end
