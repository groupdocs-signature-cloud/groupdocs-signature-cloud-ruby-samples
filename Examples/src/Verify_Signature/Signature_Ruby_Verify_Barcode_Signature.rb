# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Verify_Signature
  def self.Signature_Ruby_Verify_Barcode_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedBarcodeOne_page.docx"
    $info.password = nil

    $opts = GroupDocsSignatureCloud::VerifyBarcodeOptions.new()
    $opts.document_type = "WordProcessing"
    $opts.signature_type = "Barcode"
    $opts.barcode_type = "Code128"
    $opts.text = "123456789012"
    $opts.match_type = "Contains"
    $opts.page = 1
    $opts.all_pages = true

    $ps = GroupDocsSignatureCloud::PagesSetup.new()
    $ps.even_pages = false
    $ps.first_page = true
    $ps.last_page = false
    $ps.odd_pages = false
    $ps.page_numbers = [1]

    $opts.pages_setup = $ps

    $settings = GroupDocsSignatureCloud::VerifySettings.new()
    $settings.options = [$opts]
    $settings.file_info = $info
    
    $request = GroupDocsSignatureCloud::VerifySignaturesRequest.new($settings)

    # Executing an API.
    $response = api.verify_signatures($request)

    puts("Response File Info: " + $response.file_info.file_path)
  end
end