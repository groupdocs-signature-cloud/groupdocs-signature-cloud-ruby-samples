# Import modules
require './Common.rb'

class VerifyText
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedTextOne_page.docx"

    $opts = GroupDocsSignatureCloud::VerifyTextOptions.new()
    $opts.signature_type = "Text"
    $opts.text = 'GroupDocs.Signature Cloud'
    $opts.page = 1

    $settings = GroupDocsSignatureCloud::VerifySettings.new()
    $settings.options = [$opts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::VerifySignaturesRequest.new($settings)

    # Executing an API.
    $response = api.verify_signatures($request)

    puts("Verify result: " + $response.is_success.to_s)
  end
end