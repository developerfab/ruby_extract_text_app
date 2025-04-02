require 'rtesseract'

class Conversion
  attr_accessor :source

  def initialize(source)
    @source = source
  end

  def image_to_text(lang = nil)
    my_lang = lang || 'spa'

    begin
      return RTesseract.new(source, lang: my_lang)
    rescue => error
      return "Error: #{error.message}"
    end
  end
end
