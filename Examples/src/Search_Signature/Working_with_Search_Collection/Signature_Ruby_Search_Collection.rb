# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_sign_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/pdf_sign_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/sign_options_collection_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_search_collection_request.rb'
require 'common_utilities/Utils.rb'

class Search_Collection
  def self.Post_Search_Collection()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "sample2.pdf"
    password = ""
    folder = ""

    # set barcode properties
    optionsBarcode = GroupDocsSignatureCloud::PdfSignBarcodeOptionsData.new()
    # set barcode properties
    optionsQRCode = GroupDocsSignatureCloud::PdfSignQRCodeOptionsData.new()

    collection = GroupDocsSignatureCloud::SignOptionsCollectionData.new(Items: [optionsBarcode, optionsQRCode])

    request = GroupDocsSignatureCloud::PostSearchCollectionRequest.new(fileName, collection, password, folder, $storage_name)

    response = api.post_search_collection(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end
