// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

String vin = 'YV1UZK5VDM1846884';

List<Opportunity> records = [SELECT Id FROM Opportunity WHERE VIN__c = null LIMIT 2 ];
for(Opportunity record : records){
    record.VIN__c = vin;
}

update records;
