# Import modules
require './Common.rb'

class VerifyCollection
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedCollectionOne_page.docx"

    $BarcodeOpts = GroupDocsSignatureCloud::VerifyBarcodeOptions.new()
    $BarcodeOpts.signature_type = "Barcode"
    $BarcodeOpts.barcode_type = "Code128"
    $BarcodeOpts.text = "123456789012"
    $BarcodeOpts.match_type = "Contains"
    $BarcodeOpts.page = 1

    $QRCodeOpts = GroupDocsSignatureCloud::VerifyQRCodeOptions.new()
    $QRCodeOpts.signature_type = "QRCode"
    $QRCodeOpts.text = "John Smit"
    $QRCodeOpts.qr_code_type = "Aztec"
    $QRCodeOpts.page = 1

    $settings = GroupDocsSignatureCloud::VerifySettings.new()
    $settings.options = [$BarcodeOpts, $QRCodeOpts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::VerifySignaturesRequest.new($settings)

    # Executing an API.
    $response = api.verify_signatures($request)

    puts("Verify result: " + $response.is_success.to_s)
  end
end