# frozen_string_literal: true

module SherlingViewTool
  # Copyright renderer class
  class Renderer
    def self.copyright(name, message = '')
      @name = name.empty? ? 'Name not provided!' : name
      @message = message.empty? ? message : " #{message}"
      "&copy; #{Time.now.year} | <b>#{@name}</b>#{@message}"
    end
  end
end
