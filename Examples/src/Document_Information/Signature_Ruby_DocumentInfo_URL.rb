# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/requests/get_document_info_from_url_request.rb'
require 'common_utilities/Utils.rb'
class DocumentInfo_File
  def self.Get_DocumentInfo_From_Url()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    url = "https://www.dropbox.com/s/bzx1xm68zd0c910/PieChart.docx?dl=0"
    password = ""

    request = GroupDocsSignatureCloud::GetDocumentInfoFromUrlRequest.new(url, password)

    response = api.get_document_info_from_url(request)

    puts("FleName: " + (response.name).to_s);
    puts("Folder: " + (response.folder).to_s);
  end
end