# Import modules
require './Common.rb'

class SearchQRCode
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedQRCodeOne_page.docx"

    $opts = GroupDocsSignatureCloud::SearchQRCodeOptions.new()
    $opts.signature_type = "QRCode"
    $opts.all_pages = true

    $settings = GroupDocsSignatureCloud::SearchSettings.new()
    $settings.options = [$opts]
    $settings.file_info = $info
    
    $request = GroupDocsSignatureCloud::SearchSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.search_signatures($request)

    puts("Signatures found: " + ($response.signatures.size).to_s)
  end
end