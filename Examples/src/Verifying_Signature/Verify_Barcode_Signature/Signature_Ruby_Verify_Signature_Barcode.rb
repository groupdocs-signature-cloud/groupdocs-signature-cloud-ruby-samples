require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_verify_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_barcode_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Barcode
  def self.Post_Verify_Signature_Barcode()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "with-overflowed-text.xlsx"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::CellsVerifyBarcodeOptionsData.new()

    # set barcode properties
    options.barcode_type_name ="Code39Standard"
    options.text = "12345678"
    # set match type
    options.match_type ="Contains"
    #set pages for search
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostVerificationBarcodeRequest.new(fileName, options, password, folder, $storage_name)

    response = api.post_verification_barcode(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end