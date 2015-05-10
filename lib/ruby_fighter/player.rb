module RubyFighter

  class Player
    SCALE = 3   # same for all players
    POS_Y = 180

    def initialize(window, name, flip=false)
      @image = Gosu::Image.new(window, "assets/#{name}/idle-1.gif", false)
      @pos_x = 0
      @flip  = flip
    end

    def move_to(x)
      @pos_x = x
    end

    def width
      @image.width * SCALE
    end

    def draw
      pos_x   = @pos_x + (@flip ? width : 0)
      scale_x = SCALE * (@flip ? -1 : 1)

      @image.draw(pos_x, POS_Y, 1, scale_x, SCALE)
    end

  end
end
