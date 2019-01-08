# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/pdf_digital_signature_data.rb'
require 'groupdocs_signature_cloud/models/padding_data.rb'
require 'groupdocs_signature_cloud/models/pages_setup_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_digital_request.rb'
require 'groupdocs_signature_cloud/models/color.rb'
require 'common_utilities/Utils.rb'

class Signature_Digital
  def self.Post_Signature_Digital()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance();

    fileName = "sample2.pdf"
    password = ""
    folder = ""

    options = GroupDocsSignatureCloud::PdfSignDigitalOptionsData.new()

    # set digital signature properties
    options.image_guid = "signature.jpg"
    options.certificate_guid = "temp.pfx"
    options.password = "1234567890"
    # set position on page
    # set position on page
    options.left = 100
    options.top = 100
    options.width = 300
    options.height = 100
    options.location_measure_type = "Pixels"
    options.size_measure_type = "Pixels"
    options.rotation_angle = 45
    options.horizontal_alignment = "None"
    options.vertical_alignment = "None"
    # set margin
    margin = GroupDocsSignatureCloud::PaddingData.new(all = 100)
    options.margin = margin
    options.margin_measure_type = "Pixels"
    #set border
    options.opacity = 1
    #set pages for signing
    options.sign_all_pages = false
    options.document_page_number = 1
    pagesSetup = GroupDocsSignatureCloud::PagesSetupData.new({ 'FirstPage' => true,  'LastPage' => true, 'OddPages' => true, 'EvenPages' => true})
    options.pages_setup = pagesSetup

    request = GroupDocsSignatureCloud::PostDigitalRequest.new(fileName, options, password, folder, $storage_name)

    api.post_digital(request)

    puts("Document Signed")
  end
end