# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Signing_Documents
  def self.Signature_Ruby_Digital_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil

    $opts = GroupDocsSignatureCloud::SignDigitalOptions.new()
    $opts.document_type = "WordProcessing"
    $opts.signature_type = 'Digital'
    $opts.image_guid = "signaturedocs\\signature.jpg"
    $opts.certificate_guid = "signaturedocs\\temp.pfx"
    $opts.password = '1234567890'

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.options = [$opts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedDigitalOne_page.docx"
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("file_path: " + $response.file_info.file_path)
  end
end