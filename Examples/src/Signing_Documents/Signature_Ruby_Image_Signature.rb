# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Signing_Documents
  def self.Signature_Ruby_Image_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil

    $opts = GroupDocsSignatureCloud::SignImageOptions.new()
    $opts.document_type = "WordProcessing"
    $opts.signature_type = "Image"
    $opts.image_guid = "signaturedocs\\signature.jpg"

    # set signature position on a page
    $opts.left = 100
    $opts.top = 100
    $opts.width = 200
    $opts.height = 100
    $opts.location_measure_type = "Pixels"
    $opts.size_measure_type = "Pixels"
    $opts.rotation_angle = 0
    $opts.horizontal_alignment = "None"
    $opts.vertical_alignment = "None"

    $opts.margin = GroupDocsSignatureCloud::Padding.new()
    $opts.margin.all = 5
    $opts.margin_measure_type = "Pixels"

    # set signature appearance
    $opts.opacity = 0.8

    $opts.page = 1
    $opts.all_pages = false

    $ps = GroupDocsSignatureCloud::PagesSetup.new()
    $ps.even_pages = false
    $ps.first_page = true
    $ps.last_page = false
    $ps.odd_pages = false
    $ps.page_numbers = [1]
    $opts.pages_setup = $ps

    $settings = GroupDocsSignatureCloud::SignSettings.new()
    $settings.options = [$opts]

    $settings.save_options = GroupDocsSignatureCloud::SaveOptions.new()
    $settings.save_options.output_file_path = "signaturedocs\\signedImageOne_page.docx"
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("file_path: " + $response.file_info.file_path)
  end
end