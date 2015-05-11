module RubyFighter

  class Player
    SCALE = 3   # same for all players
    POS_Y = 180
    SPEED = 3

    def initialize(window, name, flip=false)
      @images = RubyFighter::Animation.new(window, "#{name}/idle")
      @pos_x  = 0
      @flip   = flip
      @max_x  = window.width

      move_to flip ? @max_x - 100 - width : 100
    end

    def move_to(x)
      @pos_x = x
    end

    def move_left
      @pos_x -= SPEED
    end

    def move_right
      @pos_x += SPEED
    end

    def left
      @pos_x
    end

    def right
      @pos_x + width
    end

    def width
      @images.width * SCALE
    end

    def draw
      pos_x   = @pos_x + (@flip ? width : 0)
      scale_x = SCALE * (@flip ? -1 : 1)

      @images.draw(pos_x, POS_Y, 1, scale_x, SCALE)
    end

  end
end
