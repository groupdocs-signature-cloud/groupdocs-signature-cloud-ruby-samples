# Import modules
require './Common.rb'

class GetSupportedFormats
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::InfoApi.from_config($config)

    # Retrieve supported file-formats
    $response = api.get_supported_file_formats()

    puts("Supported file-formats: " + $response.formats.length.to_s)
  end
end