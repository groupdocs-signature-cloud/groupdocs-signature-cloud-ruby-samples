require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/words_verify_text_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_text_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Text_From_Url
  def self.Post_Verify_Signature_Text_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::WordsVerifyTextOptionsData.new()

    # set text properties
    options.text = "John Smith"
    #set pages for verify
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostVerificationTextFromUrlRequest.new(url, options, password, $storage_name)

    response = api.post_verification_text_from_url(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end