# Import module
from groupdocs_signature_cloud.rest import ApiException
from Common_Utilities.Utils import Common_Utilities
from groupdocs_signature_cloud.models.cells_search_digital_options_data import CellsSearchDigitalOptionsData
from groupdocs_signature_cloud.models.requests.post_search_digital_request import PostSearchDigitalRequest

class Search_Signature_Digital:

	@staticmethod
	def Post_Search_Signature_Digital():

		try:
			# Getting instance of the API
			api = Common_Utilities.Get_SignatureApi_Instance();

			fileName = "with-overflowed-text.xlsx"
			password = ""
			folder = ""

			options = CellsSearchDigitalOptionsData()

			request = PostSearchDigitalRequest(fileName, options, password, folder, Common_Utilities.storage_name)
			
			response = api.post_search_digital(request)

			print("Response: " + str(response));

		except ApiException as e:
			print("Exception when calling SignatureApi: {0}".format(e.message))