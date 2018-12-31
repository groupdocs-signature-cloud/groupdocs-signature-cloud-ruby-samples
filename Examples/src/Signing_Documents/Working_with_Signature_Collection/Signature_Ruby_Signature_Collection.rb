# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.padding_data import PaddingData
from groupdocs_signature_cloud.models.pages_setup_data import PagesSetupData
from groupdocs_signature_cloud.models.color import Color
from groupdocs_signature_cloud.models.signature_font_data import SignatureFontData
from groupdocs_signature_cloud.models.requests.post_collection_request import PostCollectionRequest
from groupdocs_signature_cloud.models.sign_options_collection_data import SignOptionsCollectionData
from groupdocs_signature_cloud.models.pdf_sign_barcode_options_data import PdfSignBarcodeOptionsData

class Signature_Collection:

    @staticmethod
    def Post_Signature_Collection():
    
        try:
            # Getting instance of the API
            api = Common_Utilities.Get_SignatureApi_Instance();
    
            fileName = "sample2.pdf"
            password = ""
            folder = ""
            
            collection = SignOptionsCollectionData()
    
            options = PdfSignBarcodeOptionsData()
                        
            # set text properties
            options.text = "12345678"
            font = SignatureFontData("Arial", 12, True, False, False)
            options.font = font
            # set position on page
            options.left = 100
            options.top = 100
            options.width = 100
            options.height = 100
            options.location_measure_type = "Pixels"
            options.size_measure_type = "Pixels"
            options.stretch = "None"
            options.rotation_angle = 45
            options.horizontal_alignment = "Left"
            options.vertical_alignment = "Top"
            # set margin
            margin = PaddingData(all = 150)        
            options.margin = margin
            options.margin_measure_type = "Pixels"
            # set colors
            clrFore = Color("#ff0000")
            options.fore_color = clrFore
            clrBoard = Color("#121212")
            options.border_color = clrBoard
            clrBack = Color("#ffaaaa")
            options.background_color = clrBack
            #set pages for signing
            options.sign_all_pages = False
            options.document_page_number = 1
            pagesSetup = PagesSetupData(True, False, False, False)        
            options.pages_setup = pagesSetup       

            collection._items = [options]

            request = PostCollectionRequest(fileName, collection, password, folder, Common_Utilities.storage_name)

            api.post_collection(request)

            print("Document Collection Signed");

        except ApiException as e:
            print("Exception when calling SignatureApi: {0}".format(e.message))