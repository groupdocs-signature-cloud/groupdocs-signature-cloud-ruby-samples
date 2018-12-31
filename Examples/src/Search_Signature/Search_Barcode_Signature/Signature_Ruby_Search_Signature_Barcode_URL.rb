# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.cells_search_barcode_options_data import CellsSearchBarcodeOptionsData
from groupdocs_signature_cloud.models.requests.post_search_barcode_from_url_request import PostSearchBarcodeFromUrlRequest

class Search_Signature_Barcode_From_Url:

	@staticmethod
	def Post_Search_Signature_Barcode_From_Url():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			Url = "https://www.dropbox.com/s/o9k7gweapq8k15l/SignedForVerificationAll.xlsx?dl=1"
			password = ""

			options = CellsSearchBarcodeOptionsData()

			# set barcode properties
			options.barcode_type_name ="Code39Standard"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for search
			options.document_page_number = 1

			request = PostSearchBarcodeFromUrlRequest(Url, options, password, Common_Utilities.storage_name)
			
			response = api.post_search_barcode_from_url(request)

			print("Searched Count: " + str(len(response.signatures)));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))
			