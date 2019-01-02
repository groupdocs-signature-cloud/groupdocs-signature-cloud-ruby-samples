# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_search_digital_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_digital_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Search_Signature_Digital_From_Url
  def self.Post_Search_Signature_Digital_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::CellsSearchDigitalOptionsData.new()

    request = GroupDocsSignatureCloud::PostSearchDigitalFromUrlRequest.new(url, options, password,  $storage_name)

    response = api.post_search_digital_from_url(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end