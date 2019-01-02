# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_sign_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/cells_sign_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/sign_options_collection_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_search_collection_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Search_Collection_From_Url
  def self.Post_Search_Collection_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
    password = ""

    # set barcode properties
    optionsBarcode = GroupDocsSignatureCloud::CellsSignBarcodeOptionsData.new()
    # set barcode properties
    optionsQRCode = GroupDocsSignatureCloud::CellsSignQRCodeOptionsData.new()

    collection = GroupDocsSignatureCloud::SignOptionsCollectionData.new(Items: [optionsBarcode, optionsQRCode])

    request = GroupDocsSignatureCloud::PostSearchCollectionFromUrlRequest.new(url, collection, password, $storage_name)

    response = api.post_search_collection_from_url(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end