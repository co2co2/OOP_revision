class Player
  attr_accessor :gold_coins, :health_points, :lives
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      if @lives == 0
        restart
      else
        @lives -= 1
        @health_points = 10
      end
    end
  end

  def restart
    initialize
  end



end
