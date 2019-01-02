# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_search_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/padding_data.rb'
require 'groupdocs_signature_cloud/models/pages_setup_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_barcode_from_url_request.rb'
require 'groupdocs_signature_cloud/models/color.rb'
require 'common_utilities/Utils.rb'

class Search_Signature_Barcode_From_Url
  def self.Post_Search_Signature_Barcode_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::CellsSearchBarcodeOptionsData.new()

    # set barcode properties
    options.barcode_type_name ="Code39Standard"
    options.text = "12345678"
    # set match type
    options.match_type ="Contains"
    #set pages for search
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostSearchBarcodeFromUrlRequest.new(url, options, password,  $storage_name)

    response = api.post_search_barcode_from_url(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end