# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.cells_search_barcode_options_data import CellsSearchBarcodeOptionsData
from groupdocs_signature_cloud.models.pdf_sign_barcode_options_data import PdfSignBarcodeOptionsData
from groupdocs_signature_cloud.models.pdf_sign_qr_code_options_data import PdfSignQRCodeOptionsData
from groupdocs_signature_cloud.models.requests.post_search_collection_from_url_request import PostSearchCollectionFromUrlRequest

class Search_Collection_From_Url:

	@staticmethod
	def Post_Search_Collection_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
			password = ""

			collection = CellsSearchBarcodeOptionsData()
			
			# set barcode properties
			optionsBarcode = PdfSignBarcodeOptionsData()
			optionsBarcode.barcode_type_name ="Code39Standard"
			optionsBarcode.text = "12345678"
			optionsBarcode.match_type ="Contains"
			optionsBarcode.document_page_number = 1
			
			# set barcode properties
			optionsQRCode = PdfSignQRCodeOptionsData()
			optionsQRCode.qr_code_type_name ="Aztec"
			optionsQRCode.text = "12345678"
			optionsQRCode.match_type ="Contains"
			optionsQRCode.document_page_number = 1

			collection._items = [optionsBarcode, optionsQRCode]
			
			request = PostSearchCollectionFromUrlRequest(Url, collection, password, Common_Utilities.storage_name)
			
			response = api.post_search_collection_from_url(request)

			print("Searched Count: " + str(len(response.signatures)));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			