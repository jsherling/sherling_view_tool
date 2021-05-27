module SherlingViewTool
  # Copyright renderer class
  class Renderer
    def self.copyright(name, message)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{message}"
    end
  end
end
