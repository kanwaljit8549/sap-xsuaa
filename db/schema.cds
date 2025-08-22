namespace car.company;

using {cuid} from '@sap/cds/common';

entity Company : cuid {
    name         : String;
    country      : Association to Country;
    car          : Association to Cars;
    address      : String;
    contactEmail : String;
    contactPhone : String;
    cars         : Composition of many Cars
                       on cars.company = $self;
}

entity Country {
    key code : String(3);
        name : String;
}

entity Cars : cuid {
    model           : String;
    type            : String; // SUV, Sedan, etc.
    year            : Integer;
    price           : Decimal(15, 2);
    company         : Association to Company;
}