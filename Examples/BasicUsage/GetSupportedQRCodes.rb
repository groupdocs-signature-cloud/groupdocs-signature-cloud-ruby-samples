# Import modules
require './Common.rb'

class GetSupportedQRCodes
  def self.Run() 
    # Getting instance of the API
    api = GroupDocsSignatureCloud::InfoApi.from_config($config)
    $response = api.get_supported_qr_codes()
    puts("Supported QRCodes: " + $response.qr_code_types.length.to_s)
  end
end