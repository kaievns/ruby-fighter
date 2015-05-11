module RubyFighter

  class Animation

    def initialize(window, pattern)
      @images = find_images_matching(pattern, window)
    end

    def width
      @images[0].width
    end

    def draw(*args)
      current_image.draw *args
    end

    def play_once(&callback)
      @index           = nil
      @last_time       = nil
      @finish_callback = callback
    end

  private

    def current_image
      @last_time ||= Gosu.milliseconds
      @index     ||= 0

      next_image if Gosu.milliseconds - @last_time > 150

      @images[@index]
    end

    def next_image
      @last_time   = Gosu.milliseconds
      @index      += 1
      @index       = 0 if @index > @images.size - 1

      if @index == 0 && @finish_callback
        @finish_callback.call
        @finish_callback = nil
      end
    end

    def find_images_matching(pattern, window)
      Dir["assets/#{pattern}*"].map do |path|
        Gosu::Image.new(window, path, false)
      end
    end

  end

end
