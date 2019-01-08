# Load the gem
require 'groupdocs_signature_cloud'
require 'groupdocs_signature_cloud/models/requests/get_document_info_request.rb'
require 'common_utilities/Utils.rb'
class DocumentInfo_File
  def self.Get_DocumentInfo_File()

    # Getting instance of the API
    api = Common_Utilities.Get_SignatureApi_Instance()

    fileName = "one-page.docx"
    password = ""
    folder = ""

    request = GroupDocsSignatureCloud::GetDocumentInfoRequest.new(fileName, password, folder, $storage_name)

    response = api.get_document_info(request)

    puts("FleName: " + (response.name).to_s);
    puts("Folder: " + (response.folder).to_s);
  end
end
