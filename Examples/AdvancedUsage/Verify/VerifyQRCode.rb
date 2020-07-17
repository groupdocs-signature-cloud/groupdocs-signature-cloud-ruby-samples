# Import modules
require './Common.rb'

class VerifyQRCode
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedQRCodeOne_page.docx"

    $opts = GroupDocsSignatureCloud::VerifyQRCodeOptions.new()
    $opts.signature_type = "QRCode"
    $opts.text = "John Smit"
    $opts.qr_code_type = "Aztec"
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