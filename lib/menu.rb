require 'cli/ui'
require './lib/conversion'

class Menu
  def main
    CLI::UI::Frame.open('Bienvenido') do
      puts 'Este es un programa para extraer información de imagenes, archivos, etc.'
      CLI::UI::Prompt.ask('Por favor seleccione una opcion para continuar') do |handler|
        handler.option('Extraer texto desde imagen') do |x|
          image_path = CLI::UI::Prompt.ask('Ingresa la ruta de la imagen')
          conversion = Conversion.new(image_path)
          path_file = CLI::UI::Prompt.ask('Ingresa la ruta y nombre del archivo donde se colocara el texto')
          File.write(path_file, conversion.image_to_text)
        end
        # TO DO: Implement the logic for this menu
        handler.option('Extraer texto desde pdf')
      end
    end
  end
end
