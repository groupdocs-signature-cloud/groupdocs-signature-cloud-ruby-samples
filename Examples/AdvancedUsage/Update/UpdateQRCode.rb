# Import modules
require './Common.rb'

class UpdateQRCode
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
    $response = api.search_signatures($request)

    # Update
    $updateOpts = GroupDocsSignatureCloud::UpdateOptions.new()
    $updateOpts.signature_type = "QRCode"
    $updateOpts.signature_id = $response.signatures[0].signature_id
    $updateOpts.left = 200
    $updateOpts.top = 200
    $updateOpts.width = 200
    $updateOpts.height = 200
    $updateOpts.is_signature = true

    $updateSettings = GroupDocsSignatureCloud::UpdateSettings.new()
    $updateSettings.options = [$updateOpts]
    $updateSettings.file_info = $info

    $request = GroupDocsSignatureCloud::UpdateSignaturesRequest.new($updateSettings)
    $response = api.update_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end