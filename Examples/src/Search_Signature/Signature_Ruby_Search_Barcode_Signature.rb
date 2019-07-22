# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Search_Signature
  def self.Signature_Ruby_Search_Barcode_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\signedBarcodeOne_page.docx"
    $info.password = nil

    $opts = GroupDocsSignatureCloud::SearchBarcodeOptions.new()
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

    $settings = GroupDocsSignatureCloud::SearchSettings.new()
    $settings.options = [$opts]
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::SearchSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.search_signatures($request)

    puts("Signatures length: " + ($response.signatures.size).to_s)
  end
end