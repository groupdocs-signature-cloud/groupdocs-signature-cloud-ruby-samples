# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Signing_Documents
  def self.Signature_Ruby_Collection_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil

    $BarcodeOpts = GroupDocsSignatureCloud::SignBarcodeOptions.new()
    $BarcodeOpts.document_type = "WordProcessing"
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

    $BarcodeOpts.border_color = GroupDocsSignatureCloud::Color.new()
    $BarcodeOpts.border_color.web = "DarkOrange"

    $BarcodeOpts.background_color = GroupDocsSignatureCloud::Color.new()
    $BarcodeOpts.background_color.web = "DarkOrange"
    $BarcodeOpts.opacity = 0.8

    $BarcodeOpts.inner_margins = GroupDocsSignatureCloud::Padding.new()
    $BarcodeOpts.inner_margins.all = 2
    $BarcodeOpts.border_visiblity = true
    $BarcodeOpts.border_dash_style = "Dash"
    $BarcodeOpts.border_weight = 12

    $BarcodeOpts.page = 1
    $BarcodeOpts.all_pages = false

    $Barcodeps = GroupDocsSignatureCloud::PagesSetup.new()
    $Barcodeps.even_pages = false
    $Barcodeps.first_page = true
    $Barcodeps.last_page = false
    $Barcodeps.odd_pages = false
    $Barcodeps.page_numbers = [1]
    $BarcodeOpts.pages_setup = $Barcodeps

    $QRCodeOpts = GroupDocsSignatureCloud::SignQRCodeOptions.new()
    $QRCodeOpts.document_type = "WordProcessing"
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

    $QRCodeOpts.border_color = GroupDocsSignatureCloud::Color.new()
    $QRCodeOpts.border_color.web = "DarkOrange"

    $QRCodeOpts.background_color = GroupDocsSignatureCloud::Color.new()
    $QRCodeOpts.background_color.web = "DarkOrange"
    $QRCodeOpts.opacity = 0.8

    $QRCodeOpts.inner_margins = GroupDocsSignatureCloud::Padding.new()
    $QRCodeOpts.inner_margins.all = 2
    $QRCodeOpts.border_visiblity = true
    $QRCodeOpts.border_dash_style = "Dash"
    $QRCodeOpts.border_weight = 12

    $QRCodeOpts.page = 1
    $QRCodeOpts.all_pages = false

    $QRCodeps = GroupDocsSignatureCloud::PagesSetup.new()
    $QRCodeps.even_pages = false
    $QRCodeps.first_page = true
    $QRCodeps.last_page = false
    $QRCodeps.odd_pages = false
    $QRCodeps.page_numbers = [1]
    $QRCodeOpts.pages_setup = $QRCodeps

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.options = [$BarcodeOpts, $QRCodeOpts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedCollectionOne_page.docx"

    $settings.file_info = $info
    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("file_path: " + $response.file_info.file_path)
  end
end