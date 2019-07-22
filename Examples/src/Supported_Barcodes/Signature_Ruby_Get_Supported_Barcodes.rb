# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Supported_Barcodes
  def self.Signature_Ruby_Get_Supported_Barcodes()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    # Retrieve supported file-formats
    $response = api.get_supported_barcodes()

    # Print out supported file-formats
    puts("Supported Barcodes:")
    $response.barcode_types.each do |format|
      puts("#{format.name}")
    end
  end
end