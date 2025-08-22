sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'sapxsuaaui',
            componentId: 'CompanyList',
            contextPath: '/Company'
        },
        CustomPageDefinitions
    );
});