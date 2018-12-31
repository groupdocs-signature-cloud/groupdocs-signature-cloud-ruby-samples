# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Supported_QRcodes
  def self.Get_All_Supported_QRcodes()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    # Retrieve supported qr-codes
    response = api.get_qr_codes()

    # Print out supported qr-codes
    puts("Supported qr-codes:")
    response.qr_code_types.each do |curItem|
      puts("#{curItem.name})")
    end
  end
end