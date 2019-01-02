# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/words_barcode_signature_data.rb'
require 'groupdocs_signature_cloud/models/padding_data.rb'
require 'groupdocs_signature_cloud/models/pages_setup_data.rb'
require 'groupdocs_signature_cloud/models/requests/post_barcode_from_url_request.rb'
require 'groupdocs_signature_cloud/models/color.rb'
require 'common_utilities/Utils.rb'

class Signature_Barcode_From_Url

  def self.Post_Signature_Barcode_From_Url()

      # Getting instance of the API
      api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=1"
      password = ""

      options = GroupDocsSignatureCloud::WordsSignBarcodeOptionsData.new()

      # set barcode properties
      options.barcode_type_name ="Code128"
      options.text = "12345678"
      # set position on page
      options.left = 100
      options.top = 100
      options.width = 300
      options.height = 100
      options.location_measure_type = "Pixels"
      options.size_measure_type = "Pixels"
      options.stretch = "None"
      options.rotation_angle = 45
      options.horizontal_alignment = "Left"
      options.vertical_alignment = "Top"
      # set margin
      margin = GroupDocsSignatureCloud::PaddingData.new(all = 100)    
      options.margin = margin
      options.margin_measure_type = "Pixels"
      #set border 
      options.border_dash_style = "DashLongDashDot"
      options.border_weight = 1
      options.opacity = 1
      options.border_visiblity = true
      # set colors
      clrFore = GroupDocsSignatureCloud::Color.new("#ff0000")
      options.fore_color = clrFore
      clrBoard = GroupDocsSignatureCloud::Color.new("#121212")
      options.border_color = clrBoard
      clrBack = GroupDocsSignatureCloud::Color.new("#ffaaaa")
      options.background_color = clrBack
      #set pages for signing
      options.sign_all_pages = false
      options.document_page_number = 1
      pagesSetup = GroupDocsSignatureCloud::PagesSetupData.new({ 'FirstPage' => true,  'LastPage' => true, 'OddPages' => true, 'EvenPages' => true})    
      options.pages_setup = pagesSetup     

      request = GroupDocsSignatureCloud::PostBarcodeFromUrlRequest.new(url, options, password)
      
      api.post_barcode_from_url(request)

      puts("Document Signed")
  end
end