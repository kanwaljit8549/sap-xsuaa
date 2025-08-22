using {car.company as db} from '../db/schema';

service CarCatalog @(path: 'CatalogService')@(requires: [
    'Admin',
    'Viewer'
]) {

    @restrict: [
        {
            grant: 'READ',
            to   : [
                'Viewer',
                'Admin'
            ]
        },
        {
            grant: 'WRITE',
            to   : 'Admin'
        }
    ]
    
    entity Company as projection on db.Company;

    @restrict: [
        {
            grant: 'READ',
            to   : [
                'Viewer',
                'Admin'
            ]
        },
        {
            grant: 'WRITE',
            to   : 'Admin'
        }
    ]
   
    entity Cars    as projection on db.Cars;


    @restrict: [{
        grant: 'READ',
        to   : [
            'Viewer',
            'Admin'
        ]
    }]
    
    entity Country as projection on db.Country;
}
