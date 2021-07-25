# frozen_string_literal: true

require_relative "mega_lotto/version"
require_relative "mega_lotto/config"
# Draw class
module MegaLotto
  class Error < StandardError; end

  # Simple class top generate the lotto numbers
  class Drawing
    def draw
      5.times.map { single_draw }
    end

    private

    def single_draw
      rand(1..90)
    end
  end

  def self.reset
    @config = MegaLotto::Configuration
  end

  def self.config
    @config ||= MegaLotto::Configuration.new
  end

  def self.configure
    yield(config)
  end
end
