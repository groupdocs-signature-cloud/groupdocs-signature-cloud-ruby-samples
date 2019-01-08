require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_verify_text_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_text_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Text
  def self.Post_Verify_Signature_Text()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "sample2.pdf"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::PdfVerifyTextOptionsData.new()

    # set text properties
    options.text = "John Smith"
    #set pages for verify
    options.document_page_number = 1

    request = GroupDocsSignatureCloud::PostVerificationTextRequest.new(fileName, options, password, folder, $storage_name)

    response = api.post_verification_text(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end