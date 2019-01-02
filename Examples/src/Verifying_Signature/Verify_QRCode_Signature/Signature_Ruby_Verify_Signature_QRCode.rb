require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_verify_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_qr_code_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_QRCode
  def self.Post_Verify_Signature_QRCode()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "with-overflowed-text.xlsx"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::CellsVerifyQRCodeOptionsData.new()

    # set barcode properties
    options.qr_code_type_name ="Aztec"
    options.text = "12345678"
    # set match type
    options.match_type ="Contains"
    #set pages for search
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostVerificationQrCodeRequest.new(fileName, options, password, folder, $storage_name)

    response = api.post_verification_qr_code(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end