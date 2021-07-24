# frozen_string_literal: true

require_relative "mega_lotto/version"

module MegaLotto
  class Error < StandardError; end
  # Your code goes here...

  # Simple class top generate the lotto numbers
  class Drawing
    def draw
      5.times.map { single_draw }
    end

    private

    def single_draw
      rand(1..100)
    end
  end
end
