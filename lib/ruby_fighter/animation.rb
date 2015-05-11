module RubyFighter

  class Animation

    def initialize(window, pattern)
      @images = find_images_matching(pattern, window)
    end

    def width
      @images[0].width
    end

    def draw(*args)
      image = @images[Gosu.milliseconds / 200 % @images.size]
      image.draw *args
    end

  private

    def find_images_matching(pattern, window)
      Dir["assets/#{pattern}*"].map do |path|
        Gosu::Image.new(window, path, false)
      end
    end

  end

end
