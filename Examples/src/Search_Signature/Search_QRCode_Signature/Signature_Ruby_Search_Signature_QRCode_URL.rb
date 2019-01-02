# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_search_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_qr_code_request.rb'
require 'common_utilities/Utils.rb'

class Search_Signature_QRCode_From_Url
  def self.Post_Search_Signature_QRCode_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::PdfSearchQRCodeOptionsData.new()

    request = GroupDocsSignatureCloud::PostSearchQrCodeFromUrlRequest.new(url, options, password,  $storage_name)

    response = api.post_search_qr_code_from_url(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end