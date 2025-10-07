public class ApiService {
    public static void stealOpportunities() {
        try {
            //String query = 'SELECT Id, Name, AmountAfterDiscount__c, DiscountPercent__c, VIN__c, VehicleBrand__c, VehicleType__c FROM Opportunity';
            String query = 'SELECT Id, Name, AmountAfterDiscount__c, DiscountPercent__c, VIN__c FROM Opportunity';
            HttpRequest req = new HttpRequest();
           req.setEndpoint('callout:mara/' + 'services/data/v61.0/query?q=' + EncodingUtil.urlEncode(query, 'UTF-8'));
            req.setMethod('GET');

            Http http = new Http();
            HTTPResponse res = http.send(req);

            if (res.getStatusCode() == 200) {
                System.debug('✅ Opportunities: ' + res.getBody());
            } else {
                System.debug('❌ Query failed: ' + res.getStatusCode() + ' ' + res.getBody());
            }

        } catch (Exception e) {
            System.debug('Error in callout: ' + e.getMessage());
        }
    }
}