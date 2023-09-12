<cfoutput>

	<h1>
		#server.coldfusion.productName# -
		#server.coldfusion.productVersion#
	</h1>

	<cfquery name="accessTest">
		SELECT 1 AS yay;
	</cfquery>

	<cfdump var="#accessTest#" />

</cfoutput>
