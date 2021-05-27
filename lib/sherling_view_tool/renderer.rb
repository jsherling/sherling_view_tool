module SherlingViewTool
  # Copyright renderer class
  class Renderer
    def self.copyright(name = 'Name not provided!', message = 'All rights reserved')
      "&copy; #{Time.now.year} | <b>#{name}</b> #{message}"
    end
  end
end
