# Import modules
require './Common.rb'

class GetSupportedBarcodes
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::InfoApi.from_config($config)

    # Retrieve supported file-formats
    $response = api.get_supported_barcodes()

    puts("Supported Barcodes: " + $response.barcode_types.length.to_s)
  end
end