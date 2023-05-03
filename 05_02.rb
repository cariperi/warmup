class Scheduler
  def initialize(developers, days)
    @developers = developers
    @days = days
  end

  def make_schedule
    schedule = []
    until schedule.count == @days do
      day = @developers.sample(2)
      schedule << day unless schedule.include?(day) || schedule.include?(day.reverse)
    end
    schedule
  end
end

developers = ['Alex', 'Bernadette', 'Charles', 'Dana', 'Eddie', 'Fernanda', 'Gus', 'Hiro']
weekly_schedule = Scheduler.new(developers, 7)
p weekly_schedule.make_schedule