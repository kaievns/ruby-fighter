module RubyFighter

  class Backdrop < Gosu::Image

    def initialize(window, filename)
      super(window, "assets/#{filename}", false)

      @scale = window.height / height
      @bg_x  = -(width * @scale - window.width) / 2
    end

    def draw
      super @bg_x, 0, 0, @scale, @scale
    end

  end

end
