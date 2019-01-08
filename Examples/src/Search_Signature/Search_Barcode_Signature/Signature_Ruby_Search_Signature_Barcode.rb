# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_search_barcode_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_barcode_request.rb'
require 'common_utilities/Utils.rb'

class Search_Signature_Barcode
  def self.Post_Search_Signature_Barcode()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "with-overflowed-text.xlsx"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::CellsSearchBarcodeOptionsData.new()

    # set barcode properties
    options.barcode_type_name ="Code39Standard"
    options.text = "12345678"
    # set match type
    options.match_type ="Contains"
    #set pages for search
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostSearchBarcodeRequest.new(fileName, options, password, folder, $storage_name)

    response = api.post_search_barcode(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end