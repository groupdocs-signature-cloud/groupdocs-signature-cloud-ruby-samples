# Import modules
require './Common.rb'

class BarcodeSignature
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"

    $opts = GroupDocsSignatureCloud::SignBarcodeOptions.new()
    $opts.signature_type = 'Barcode'
    $opts.barcode_type = 'Code128'
    $opts.text = '123456789012'
    $opts.code_text_alignment = 'None'

    # set signature position on a page
    $opts.left = 100
    $opts.top = 100
    $opts.width = 300
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
    $settings.options = [$opts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedBarcodeOne_page.docx"

    $settings.file_info = $info
    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end