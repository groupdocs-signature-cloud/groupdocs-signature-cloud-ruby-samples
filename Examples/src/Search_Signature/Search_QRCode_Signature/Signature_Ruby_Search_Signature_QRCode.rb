# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_search_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_qr_code_request.rb'
require 'common_utilities/Utils.rb'

class Search_Signature_QRCode
  def self.Post_Search_Signature_QRCode()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "sample2.pdf"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::PdfSearchQRCodeOptionsData.new()

    request = GroupDocsSignatureCloud::PostSearchQrCodeRequest.new(fileName, options, password, folder, $storage_name)

    response = api.post_search_qr_code(request)

    puts("Searched Count: " + ((response.signatures).length).to_s)
  end
end