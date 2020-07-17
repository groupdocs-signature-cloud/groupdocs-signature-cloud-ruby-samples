# Import modules
require './Common.rb'

class DeleteBarcode
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedBarcodeOne_page.docx"

    # Search
    $opts = GroupDocsSignatureCloud::SearchBarcodeOptions.new()
    $opts.signature_type = "Barcode"
    $opts.all_pages = true

    $settings = GroupDocsSignatureCloud::SearchSettings.new()
    $settings.options = [$opts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::SearchSignaturesRequest.new($settings)
    $response = api.search_signatures($request)

    # Delete
    $deleteOpts = GroupDocsSignatureCloud::DeleteOptions.new()
    $deleteOpts.signature_type = "Barcode"
    $deleteOpts.signature_id = $response.signatures[0].signature_id

    $deleteSettings = GroupDocsSignatureCloud::DeleteSettings.new()
    $deleteSettings.options = [$deleteOpts]
    $deleteSettings.file_info = $info

    $request = GroupDocsSignatureCloud::DeleteSignaturesRequest.new($deleteSettings)
    $response = api.delete_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end