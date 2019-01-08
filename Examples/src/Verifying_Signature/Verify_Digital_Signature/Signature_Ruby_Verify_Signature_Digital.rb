require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_verify_digital_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_digital_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Digital
  def self.Post_Verify_Signature_Digital()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "sample2.pdf"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::PdfVerifyDigitalOptionsData.new()

    # set digital properties
    options.certificate_guid = "temp.pfx"
    options.password = ""

    request = GroupDocsSignatureCloud::PostVerificationDigitalRequest.new(fileName, options, password, folder, $storage_name)

    response = api.post_verification_digital(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end