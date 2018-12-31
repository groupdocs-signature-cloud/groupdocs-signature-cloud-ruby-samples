# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.cells_search_barcode_options_data import CellsSearchBarcodeOptionsData
from groupdocs_signature_cloud.models.requests.post_search_barcode_request import PostSearchBarcodeRequest

class Search_Signature_Barcode:

	@staticmethod
	def Post_Search_Signature_Barcode():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			fileName = "with-overflowed-text.xlsx"
			password = ""
			folder = ""

			options = CellsSearchBarcodeOptionsData()

			# set barcode properties
			options.barcode_type_name ="Code39Standard"
			options.text = "12345678"
			# set match type
			options.match_type ="Contains"
			#set pages for search
			options.document_page_number = 1

			request = PostSearchBarcodeRequest(fileName, options, password, folder, Common_Utilities.storage_name)
			
			response = api.post_search_barcode(request)

			print("Searched Count: " + str(len(response.signatures)));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))