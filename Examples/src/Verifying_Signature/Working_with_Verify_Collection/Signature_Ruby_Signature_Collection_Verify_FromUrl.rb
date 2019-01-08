require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_verify_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/pdf_verify_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/verify_options_collection_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_collection_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Collection_From_Url
  def self.Post_Verify_Signature_Collection_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/hodevye8grewfup/one-page.pdf?dl=0"
    password = ""

    # set barcode properties
    optionsBarCode = GroupDocsSignatureCloud::PdfVerifyBarcodeOptionsData.new()
    optionsBarCode.barcode_type_name ="Code39Standard"
    optionsBarCode.text = "12345678"

    # set qrcode properties
    optionsQRCode = GroupDocsSignatureCloud::PdfVerifyQRCodeOptionsData.new()
    optionsQRCode.qr_code_type_name ="Aztec"
    optionsQRCode.text = "12345678"

    collection = GroupDocsSignatureCloud::VerifyOptionsCollectionData.new(Items: [optionsBarCode, optionsQRCode])

    request = GroupDocsSignatureCloud::PostVerificationCollectionFromUrlRequest.new(url, collection, password, $storage_name)

    response = api.post_verification_collection_from_url(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end