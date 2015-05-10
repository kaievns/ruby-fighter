module RubyFighter

  class Player
    SCALE = 3   # same for all players
    POS_Y = 180

    def initialize(window, name)
      @image = Gosu::Image.new(window, "assets/#{name}/idle-1.gif", false)
      @pos_x = 0
    end

    def move_to(x)
      @pos_x = x
    end

    def width
      @image.width * SCALE
    end

    def draw
      @image.draw(@pos_x, POS_Y, 1, SCALE, SCALE)
    end

  end
end
