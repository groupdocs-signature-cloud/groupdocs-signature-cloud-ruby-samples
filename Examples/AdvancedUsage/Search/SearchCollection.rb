# Import modules
require './Common.rb'

class SearchCollection
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedCollectionOne_page.docx"

    $BarcodeOpts = GroupDocsSignatureCloud::SearchBarcodeOptions.new()
    $BarcodeOpts.signature_type = "Barcode"
    $BarcodeOpts.all_pages = true

    $BarcodeOpts = GroupDocsSignatureCloud::SearchQRCodeOptions.new()
    $BarcodeOpts.signature_type = "QRCode"
    $BarcodeOpts.all_pages = true

    $settings = GroupDocsSignatureCloud::SearchSettings.new()
    $settings.options = [$BarcodeOpts, $BarcodeOpts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::SearchSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.search_signatures($request)

    puts("Signatures found: " + ($response.signatures.size).to_s)
  end
end