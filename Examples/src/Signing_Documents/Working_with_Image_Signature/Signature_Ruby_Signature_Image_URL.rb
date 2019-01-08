# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/words_sign_image_options_data.rb'
require 'groupdocs_signature_cloud/models/padding_data.rb'
require 'groupdocs_signature_cloud/models/pages_setup_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_image_request.rb'
require 'groupdocs_signature_cloud/models/color.rb'
require 'common_utilities/Utils.rb'

class Signature_Image_From_Url
  def self.Post_Signature_Image_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance();

    url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
    password = ""

    options = GroupDocsSignatureCloud::WordsSignImageOptionsData.new()

    # set image properties
    options.image_guid = "signature.jpg"
    # set position on page
    options.left = 100
    options.top = 100
    options.width = 100
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

    request = GroupDocsSignatureCloud::PostImageFromUrlRequest.new(url, options, password, $storage_name)

    api.post_image_from_url(request)

    puts("Document Signed")
  end
end