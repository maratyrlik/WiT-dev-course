// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

String vin = 'YV1UZK5VDM1846884';
CarData data = CaraDataService.getCarData(vin);
System.debug('car data: ' + data);
System.debug('car TovarniZnacka: ' + data.TovarniZnacka);
System.debug('car VozidloDruh: ' + data.VozidloDruh);

Opportunity record = [SELECT Id FROM Opportunity WHERE VIN__c = :vin LIMIT 1];
record.VehicleBrand__c=  data.TovarniZnacka;
record.VehicleType__c= data.VozidloDruh;
update record;
