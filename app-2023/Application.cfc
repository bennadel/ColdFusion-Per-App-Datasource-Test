component
	output = false
	hint = "I define the application settings and event handlers."
	{

	this.name = "PerAppDatasourceTest";
	this.applicationTimeout = createTimespan( 1, 0, 0, 0 );
	this.sessionManagement = false;
	this.setClientCookies = false;

	if ( url.keyExists( "stop" ) ) {

		applicationStop();
		writeOutput( "Stopping application..." );
		abort;

	}

	this.datasources = {
		"test": {
			username: "root",
			password: "password",
			driver: "MySQL",
			class: "com.mysql.cj.jdbc.Driver",
			url: "jdbc:mysql://mysql:3306/demo"
		}
	};
	this.datasource = "test";

}
