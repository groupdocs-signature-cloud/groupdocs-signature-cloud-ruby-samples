require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_verify_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/pdf_verify_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/verify_options_collection_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_collection_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Collection
  def self.Post_Verify_Signature_Collection()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "sample2.pdf"
    password = ""
    folder = ""

    # set barcode properties
    optionsBarCode = GroupDocsSignatureCloud::PdfVerifyBarcodeOptionsData.new()
    optionsBarCode.barcode_type_name ="Code39Standard"
    optionsBarCode.text = "12345678"

    # set qrcode properties
    optionsQRCode = GroupDocsSignatureCloud::PdfVerifyQRCodeOptionsData.new()
    optionsQRCode.qr_code_type_name ="Aztec"
    optionsQRCode.text = "12345678"

    collection = GroupDocsSignatureCloud::VerifyOptionsCollectionData.new(Items: [optionsBarCode, optionsQRCode])

    request = GroupDocsSignatureCloud::PostVerificationCollectionRequest.new(fileName, collection, password, folder, $storage_name)

    response = api.post_verification_collection(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end