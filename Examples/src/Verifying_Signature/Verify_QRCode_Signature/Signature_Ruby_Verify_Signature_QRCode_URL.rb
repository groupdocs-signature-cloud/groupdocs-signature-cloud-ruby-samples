require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/words_verify_qr_code_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_qr_code_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_QRCode_From_Url
  def self.Post_Verify_Signature_QRCode_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::WordsVerifyQRCodeOptionsData.new()

    # set barcode properties
    options.qr_code_type_name ="Aztec"
    options.text = "12345678"
    # set match type
    options.match_type ="Contains"
    #set pages for search
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostVerificationQrCodeFromUrlRequest.new(url, options, password, $storage_name)

    response = api.post_verification_qr_code_from_url(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end