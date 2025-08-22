sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sapxsuaaui/test/integration/FirstJourney',
		'sapxsuaaui/test/integration/pages/CompanyList',
		'sapxsuaaui/test/integration/pages/CompanyObjectPage',
		'sapxsuaaui/test/integration/pages/CarsObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompanyList, CompanyObjectPage, CarsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sapxsuaaui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompanyList: CompanyList,
					onTheCompanyObjectPage: CompanyObjectPage,
					onTheCarsObjectPage: CarsObjectPage
                }
            },
            opaJourney.run
        );
    }
);