# Load the gem
require 'groupdocs_signature_cloud'
require 'common_utilities/Utils.rb'

class Signing_Documents
  def self.Signature_Ruby_Stamp_Signature()

    # Getting instance of the API
    api = Common_Utilities.Get_SignApi_Instance()

    $info = GroupDocsSignatureCloud::FileInfo.new()
    $info.file_path = "signaturedocs\\one-page.docx"
    $info.password = nil

    $opts = GroupDocsSignatureCloud::SignStampOptions.new()
    $opts.document_type = "WordProcessing"
    $opts.signature_type = "Stamp"
    $opts.image_guid = "signaturedocs\\signature.jpg"

    # set signature position on a page
    $opts.left = 100
    $opts.top = 100
    $opts.width = 300
    $opts.height = 200
    $opts.location_measure_type = "Pixels"
    $opts.size_measure_type = "Pixels"
    $opts.rotation_angle = 0
    $opts.horizontal_alignment = "None"
    $opts.vertical_alignment = "None"

    $opts.margin = GroupDocsSignatureCloud::Padding.new()
    $opts.margin.all = 5
    $opts.margin_measure_type = "Pixels"

    # set signature appearance
    $opts.background_color = GroupDocsSignatureCloud::Color.new()
    $opts.background_color.web = "CornflowerBlue"
    $opts.background_color_crop_type = "InnerArea"
    $opts.background_image_crop_type = "MiddleArea"
    $opts.opacity = 0.8

    $outline = GroupDocsSignatureCloud::StampLine.new()
    $outline.text = "John Smith"

    $outline.font = GroupDocsSignatureCloud::SignatureFont.new()
    $outline.font.font_family = "Arial"
    $outline.font.font_size = 12
    $outline.font.bold = true
    $outline.font.italic = true
    $outline.font.underline = true
    $outline.text_bottom_intent = 5

    $outline.text_color = GroupDocsSignatureCloud::Color.new()
    $outline.text_color.web = "Gold"
    $outline.text_repeat_type = "FullTextRepeat"

    $outline.background_color = GroupDocsSignatureCloud::Color.new()
    $outline.background_color.web = "BlueViolet"
    $outline.height = 20

    $outline.inner_border = GroupDocsSignatureCloud::BorderLine.new()
    $outline.inner_border.color = GroupDocsSignatureCloud::Color.new()
    $outline.inner_border.color.web = "DarkOrange"
    $outline.inner_border.style = "LongDash"
    $outline.inner_border.transparency = 0.5
    $outline.inner_border.weight = 1.2

    $outline.outer_border = GroupDocsSignatureCloud::BorderLine.new()
    $outline.outer_border.color = GroupDocsSignatureCloud::Color.new()
    $outline.outer_border.color.web = "DarkOrange"
    $outline.outer_border.style = "LongDashDot"
    $outline.outer_border.transparency = 0.7
    $outline.outer_border.weight = 1.4
    $outline.visible = true
    $opts.outer_lines = [$outline]

    $innerline = GroupDocsSignatureCloud::StampLine.new()
    $innerline.text = "John Smith"

    $innerline.font = GroupDocsSignatureCloud::SignatureFont.new()
    $innerline.font.font_family = "Times New Roman"
    $innerline.font.font_size = 20
    $innerline.font.bold = true
    $innerline.font.italic = true
    $innerline.font.underline = true
    $innerline.text_bottom_intent = 3

    $innerline.text_color = GroupDocsSignatureCloud::Color.new()
    $innerline.text_color.web = "Gold"
    $innerline.text_repeat_type = "None"

    $innerline.background_color = GroupDocsSignatureCloud::Color.new()
    $innerline.background_color.web = "CornflowerBlue"
    $innerline.height = 30

    $innerline.inner_border = GroupDocsSignatureCloud::BorderLine.new()
    $innerline.inner_border.color = GroupDocsSignatureCloud::Color.new()
    $innerline.inner_border.color.web = "OliveDrab"
    $innerline.inner_border.style = "LongDash"
    $innerline.inner_border.transparency = 0.5
    $innerline.inner_border.weight = 1.2

    $innerline.outer_border = GroupDocsSignatureCloud::BorderLine.new()
    $innerline.outer_border.color = GroupDocsSignatureCloud::Color.new()
    $innerline.outer_border.color.web = "GhostWhite"
    $innerline.outer_border.style = "Dot"
    $innerline.outer_border.transparency = 0.4
    $innerline.outer_border.weight = 1.4
    $innerline.visible = true
    $opts.inner_lines = [$innerline]

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
    $settings.save_options.output_file_path = "signaturedocs\\signedStampOne_page.docx"
    $settings.file_info = $info

    $request = GroupDocsSignatureCloud::CreateSignaturesRequest.new($settings)

    # Executing an API.
    $response = api.create_signatures($request)

    puts("file_path: " + $response.file_info.file_path)
  end
end