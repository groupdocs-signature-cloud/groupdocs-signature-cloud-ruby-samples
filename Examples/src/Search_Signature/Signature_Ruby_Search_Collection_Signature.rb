# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Search_Signature
  def self.Signature_Ruby_Search_Collection_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedCollectionOne_page.docx"
    $info.password = nil

    $BarcodeOpts = GroupDocsSignatureCloud::SearchBarcodeOptions.new()
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

    $BarcodeOpts = GroupDocsSignatureCloud::SearchQRCodeOptions.new()
    $BarcodeOpts.document_type = "WordProcessing"
    $BarcodeOpts.signature_type = "QRCode"
    $BarcodeOpts.qr_code_type = "Aztec"
    $BarcodeOpts.text = "John Smith"
    $BarcodeOpts.match_type = 'Contains'
    $BarcodeOpts.page = 1
    $BarcodeOpts.all_pages = true

    $QRCodeps = GroupDocsSignatureCloud::PagesSetup.new()
    $QRCodeps.even_pages = false
    $QRCodeps.first_page = true
    $QRCodeps.last_page = false
    $QRCodeps.odd_pages = false
    $QRCodeps.page_numbers = [1]

    $BarcodeOpts.pages_setup = $QRCodeps

    $settings = GroupDocsSignatureCloud::SearchSettings.new()
    $settings.options = [$BarcodeOpts, $BarcodeOpts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::SearchSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.search_signatures($request)

    puts("Signatures length: " + ($response.signatures.size).to_s)
  end
end