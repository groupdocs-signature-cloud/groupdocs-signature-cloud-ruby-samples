# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/cells_sign_stamp_options_data.rb'
require 'groupdocs_signature_cloud/models/padding_data.rb'
require 'groupdocs_signature_cloud/models/pages_setup_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_stamp_request.rb'
require 'groupdocs_signature_cloud/models/color.rb'
require 'groupdocs_signature_cloud/models/signature_font_data'
require 'common_utilities/Utils.rb'

class Signature_Stamp
  def self.Post_Signature_Stamp()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "with-overflowed-text.xlsx"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::CellsSignStampOptionsData.new()

    # get colors
    clrGold = GroupDocsSignatureCloud::Color.new("#FFD700")
    clrBlueViolet = GroupDocsSignatureCloud::Color.new("#8A2BE2")
    clrCornflowerBlue = GroupDocsSignatureCloud::Color.new("#6495ED")
    clrDarkOrange = GroupDocsSignatureCloud::Color.new("#FF8C00")
    clrOliveDrab = GroupDocsSignatureCloud::Color.new("#6B8E23")
    clrGhostWhite = GroupDocsSignatureCloud::Color.new("#F8F8FF")

    # outer line
    outerLine = GroupDocsSignatureCloud::StampLineData.new()
    outerLine.text = "John Smith"
    outerLine.font = GroupDocsSignatureCloud::SignatureFontData.new({"FontFamily"=>"Arial", "FontSize"=>12, "Bold"=>true, "Italic"=>false, "Underline"=>false})
    outerLine.text_bottom_intent = 5
    outerLine.text_color = clrGold
    outerLine.text_repeat_type = "FullTextRepeat"
    outerLine.background_color = clrBlueViolet
    outerLine.height = 20
    outerLineInnerBorder = GroupDocsSignatureCloud::BorderLineData.new({"color"=>clrDarkOrange, "style"=>"LongDash", "transparency"=>0.5, "weight"=>1.2})
    outerLine.inner_border = outerLineInnerBorder
    outerLineOuterBorder = GroupDocsSignatureCloud::BorderLineData.new({"color"=>clrDarkOrange, "style"=>"LongDashDot", "transparency"=>0.7, "weight"=>1.4})
    outerLine.outer_border = outerLineOuterBorder
    outerLine.visible = true

    options.outer_lines = [outerLine]

    # inner line
    innerLine = GroupDocsSignatureCloud::StampLineData.new()
    innerLine.text = "John Smith"
    innerLine.font = GroupDocsSignatureCloud::SignatureFontData.new({"FontFamily"=>"Times New Roman", "FontSize"=>12, "Bold"=>true, "Italic"=>false, "Underline"=>true})
    innerLine.text_bottom_intent = 3
    innerLine.text_color = clrGold
    innerLine.text_repeat_type = "None"
    innerLine.background_color = clrCornflowerBlue
    innerLine.height = 30
    innerLineInnerBorder = GroupDocsSignatureCloud::BorderLineData.new({"color"=>clrOliveDrab, "style"=>"LongDash", "transparency"=>0.5, "weight"=>1.2})
    innerLine.inner_border = innerLineInnerBorder
    innerLineOuterBorder = GroupDocsSignatureCloud::BorderLineData.new({"color"=>clrGhostWhite, "style"=>"Dot", "transparency"=>0.4, "weight"=>1.4})
    innerLine.outer_border = innerLineOuterBorder
    innerLine.visible = true

    options.inner_lines = [innerLine]

    options.image_guid = "signature.jpg"
    # set position on page
    options.top = 50
    options.left = 50
    options.width = 300
    options.height = 200
    options.location_measure_type = "Pixels"
    options.size_measure_type = "Pixels"
    options.rotation_angle = 0
    options.horizontal_alignment = "None"
    options.vertical_alignment = "None"
    # set margin
    margin = GroupDocsSignatureCloud::PaddingData.new(all = 100)
    options.margin = margin
    options.margin_measure_type = "Pixels"
    # set background
    options.background_color = clrCornflowerBlue
    options.background_color_crop_type = "InnerArea"
    options.background_image_crop_type = "MiddleArea"
    #set pages for signing
    options.sign_all_pages = false
    options.document_page_number = 1
    pagesSetup = GroupDocsSignatureCloud::PagesSetupData.new({ 'FirstPage' => true,  'LastPage' => true, 'OddPages' => true, 'EvenPages' => true})
    options.pages_setup = pagesSetup

    request = GroupDocsSignatureCloud::PostStampRequest.new(fileName, options, password, folder, $storage_name)

    api.post_stamp(request)

    puts("Document Signed")
  end
end