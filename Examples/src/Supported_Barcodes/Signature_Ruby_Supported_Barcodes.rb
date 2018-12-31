# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Supported_Barcodes
  def self.Get_All_Supported_Barcodes()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    # Retrieve supported bar-codes
    response = api.get_barcodes()

    # Print out supported bar-codes
    puts("Supported bar-codes:")
    response.barcode_types.each do |curItem|
      puts("#{curItem.name})")
    end
  end
end