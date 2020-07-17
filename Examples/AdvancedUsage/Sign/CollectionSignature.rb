# Import modules
require './Common.rb'

class CollectionSignature
  def self.Run() 

    # Getting instance of the API
    api = GroupDocsSignatureCloud::SignApi.from_config($config)

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"

    $BarcodeOpts = GroupDocsSignatureCloud::SignBarcodeOptions.new()
    $BarcodeOpts.signature_type = 'Barcode'
    $BarcodeOpts.barcode_type = 'Code128'
    $BarcodeOpts.text = '123456789012'
    $BarcodeOpts.code_text_alignment = 'None'

    # set signature position on a page
    $BarcodeOpts.left = 100
    $BarcodeOpts.top = 100
    $BarcodeOpts.width = 300
    $BarcodeOpts.height = 100
    $BarcodeOpts.location_measure_type = "Pixels"
    $BarcodeOpts.size_measure_type = "Pixels"
    $BarcodeOpts.stretch = "None"
    $BarcodeOpts.rotation_angle = 0
    $BarcodeOpts.horizontal_alignment = "None"
    $BarcodeOpts.vertical_alignment = "None"

    $BarcodeOpts.margin = GroupDocsSignatureCloud::Padding.new()
    $BarcodeOpts.margin.all = 5
    $BarcodeOpts.margin_measure_type = "Pixels"

    # set signature appearance
    $BarcodeOpts.fore_color = GroupDocsSignatureCloud::Color.new()
    $BarcodeOpts.fore_color.web = "BlueViolet"

    $BarcodeOpts.background_color = GroupDocsSignatureCloud::Color.new()
    $BarcodeOpts.background_color.web = "DarkOrange"

    $BarcodeOpts.inner_margins = GroupDocsSignatureCloud::Padding.new()
    $BarcodeOpts.inner_margins.all = 2

    $BarcodeOpts.page = 1

    $QRCodeOpts = GroupDocsSignatureCloud::SignQRCodeOptions.new()
    $QRCodeOpts.signature_type = 'QRCode'
    $QRCodeOpts.text = 'John Smit'
    $QRCodeOpts.qr_code_type = 'Aztec'

    # set signature position on a page
    $QRCodeOpts.left = 100
    $QRCodeOpts.top = 100
    $QRCodeOpts.width = 200
    $QRCodeOpts.height = 100
    $QRCodeOpts.location_measure_type = "Pixels"
    $QRCodeOpts.size_measure_type = "Pixels"
    $QRCodeOpts.stretch = "None"
    $QRCodeOpts.rotation_angle = 0
    $QRCodeOpts.horizontal_alignment = "None"
    $QRCodeOpts.vertical_alignment = "None"

    $QRCodeOpts.margin = GroupDocsSignatureCloud::Padding.new()
    $QRCodeOpts.margin.all = 5
    $QRCodeOpts.margin_measure_type = "Pixels"

    # set signature appearance
    $QRCodeOpts.fore_color = GroupDocsSignatureCloud::Color.new()
    $QRCodeOpts.fore_color.web = "BlueViolet"

    $QRCodeOpts.background_color = GroupDocsSignatureCloud::Color.new()
    $QRCodeOpts.background_color.web = "DarkOrange"

    $QRCodeOpts.inner_margins = GroupDocsSignatureCloud::Padding.new()
    $QRCodeOpts.inner_margins.all = 2

    $QRCodeOpts.page = 1

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.options = [$BarcodeOpts, $QRCodeOpts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedCollectionOne_page.docx"

    $settings.file_info = $info
    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("Succeeded count: " + $response.succeeded.length.to_s)
  end
end