module RubyFighter

  class Player
    SCALE = 3   # same for all players
    POS_Y = 180

    def initialize(window, name)
      @image = Gosu::Image.new(window, "assets/#{name}/idle-1.gif", false)
    end

    def draw
      @image.draw(100, POS_Y, 1, SCALE, SCALE)
    end

  end
end
