# Import modules
require './Common.rb'

class VerifyBarcode
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedBarcodeOne_page.docx"

    $opts = GroupDocsSignatureCloud::VerifyBarcodeOptions.new()
    $opts.signature_type = "Barcode"
    $opts.barcode_type = "Code128"
    $opts.text = "123456789012"
    $opts.match_type = "Contains"
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