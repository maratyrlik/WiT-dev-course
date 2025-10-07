// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Opportunity record = [SELECT Id FROM Opportunity LIMIT 1];
record.DiscountPercent__c = 100.99;
record.AmountAfterDiscount__c = 1234567890123456.78;
record.VIN__c= 'randomVin';
update record;