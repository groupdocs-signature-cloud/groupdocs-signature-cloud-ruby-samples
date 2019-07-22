# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Supported_QRCodes
  def self.Signature_Ruby_Get_Supported_QRCodes()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    # Retrieve supported file-formats
    $response = api.get_supported_qr_codes()

    # Print out supported file-formats
    puts("Supported QRCodes:")
    $response.qr_code_types.each do |format|
      puts("#{format.name}")
    end
  end
end