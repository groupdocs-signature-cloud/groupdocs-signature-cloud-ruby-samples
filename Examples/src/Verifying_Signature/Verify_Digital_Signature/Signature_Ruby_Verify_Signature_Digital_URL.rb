require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/words_verify_digital_options_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_verification_digital_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Verify_Signature_Digital_From_Url
  def self.Post_Verify_Signature_Digital_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::WordsVerifyDigitalOptionsData.new()

    # set digital properties
    options.certificate_guid = "temp.pfx"
    options.password = ""

    request = GroupDocsSignatureCloud::PostVerificationDigitalFromUrlRequest.new(url, options, password, $storage_name)

    response = api.post_verification_digital_from_url(request)

    puts("Signature Verification Result: " + (response.result).to_s)
  end
end