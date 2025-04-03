require 'cli/ui'
require './lib/conversion'

class Menu
  def main
    CLI::UI::Frame.open('Bienvenido') do
      puts 'Este es un programa para extraer información de imagenes, archivos, etc.'
      CLI::UI::Prompt.ask('Por favor seleccione una opcion para continuar') do |handler|
        handler.option('Extraer texto desde imagen') do |x|
          begin
            image_path = CLI::UI::Prompt.ask('Ingresa la ruta de la imagen')
            extract = Conversion.new(image_path).image_to_text
            path_file = CLI::UI::Prompt.ask('Ingresa la ruta y nombre del archivo donde se colocara el texto')
            File.write(path_file, extract)
          rescue => error
            puts "Error: #{error.message}"
            CLI::UI::Frame.divider('')
            self.main
          end
        end
        # TO DO: Implement the logic for this menu
        handler.option('Extraer texto desde pdf') do |x|
          puts 'Aun no se ha implementado esta funcionalidad'
          CLI::UI::Frame.divider('')
          self.main
        end

        handler.option('Salir') do |x|
          puts 'Bye!'
        end
      end
    end
  end
end
