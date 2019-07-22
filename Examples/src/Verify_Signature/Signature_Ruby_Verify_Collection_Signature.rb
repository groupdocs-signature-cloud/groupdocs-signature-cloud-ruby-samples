# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Verify_Signature
  def self.Signature_Ruby_Verify_Collection_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedCollectionOne_page.docx"
    $info.password = nil

    $BarcodeOpts = GroupDocsSignatureCloud::VerifyBarcodeOptions.new()
    $BarcodeOpts.document_type = "WordProcessing"
    $BarcodeOpts.signature_type = "Barcode"
    $BarcodeOpts.barcode_type = "Code128"
    $BarcodeOpts.text = "123456789012"
    $BarcodeOpts.match_type = "Contains"
    $BarcodeOpts.page = 1
    $BarcodeOpts.all_pages = true

    $Barcodeps = GroupDocsSignatureCloud::PagesSetup.new()
    $Barcodeps.even_pages = false
    $Barcodeps.first_page = true
    $Barcodeps.last_page = false
    $Barcodeps.odd_pages = false
    $Barcodeps.page_numbers = [1]

    $BarcodeOpts.pages_setup = $Barcodeps

    $QRCodeOpts = GroupDocsSignatureCloud::VerifyQRCodeOptions.new()
    $QRCodeOpts.document_type = "WordProcessing"
    $QRCodeOpts.signature_type = "QRCode"
    $QRCodeOpts.text = "John Smit"
    $QRCodeOpts.qr_code_type = "Aztec"
    $QRCodeOpts.page = 1
    $QRCodeOpts.all_pages = true

    $QRCodeps = GroupDocsSignatureCloud::PagesSetup.new()
    $QRCodeps.even_pages = false
    $QRCodeps.first_page = true
    $QRCodeps.last_page = false
    $QRCodeps.odd_pages = false
    $QRCodeps.page_numbers = [1]

    $QRCodeOpts.pages_setup = $QRCodeps

    $settings = GroupDocsSignatureCloud::VerifySettings.new()
    $settings.options = [$BarcodeOpts, $QRCodeOpts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::VerifySignaturesRequest.new($settings)

    # Executing an API.
    $response = api.verify_signatures($request)

    puts("Response File Info: " + $response.file_info.file_path)
  end
end