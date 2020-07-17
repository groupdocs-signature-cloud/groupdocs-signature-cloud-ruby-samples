# Import modules
require './Common.rb'

class QRCodeSignature
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"

    $opts = GroupDocsSignatureCloud::SignQRCodeOptions.new()
    $opts.signature_type = 'QRCode'
    $opts.text = 'John Smit'
    $opts.qr_code_type = 'Aztec'

    # set signature position on a page
    $opts.left = 100
    $opts.top = 100
    $opts.width = 200
    $opts.height = 100
    $opts.location_measure_type = "Pixels"
    $opts.size_measure_type = "Pixels"
    $opts.stretch = "None"
    $opts.rotation_angle = 0
    $opts.horizontal_alignment = "None"
    $opts.vertical_alignment = "None"

    $opts.margin = GroupDocsSignatureCloud::Padding.new()
    $opts.margin.all = 5
    $opts.margin_measure_type = "Pixels"

    $opts.inner_margins = GroupDocsSignatureCloud::Padding.new()
    $opts.inner_margins.all = 2

    $opts.page = 1

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.file_info = $info
    $settings.options = [$opts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedQRCodeOne_page.docx"
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end