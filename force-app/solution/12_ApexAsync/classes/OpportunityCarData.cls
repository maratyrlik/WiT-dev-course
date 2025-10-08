public class OpportunityCarData {
    public void enrich(List<Opportunity> newList, Map<Id, Opportunity> oldMap) {
       
        if(newList.size() == 1){
            //single record in Future
            if(shouldEnrich(newList[0], oldMap.get(newList[0].Id))){
                enrich(newList[0].VIN__c);
            }
        }

        //multiple to queueable
        List<Opportunity> toEnrich = new List<Opportunity>();
        for (Opportunity newOpp : newList) {
            Opportunity oldOpp = oldMap != null ? oldMap.get(newOpp.Id) : null;
            if (shouldEnrich(newOpp, oldOpp)) {
                toEnrich.add(newOpp);
            }
        }
        if (!toEnrich.isEmpty()) {
            System.enqueueJob(new OpportunityCarDataQueueable(toEnrich));
        }
    }

    public void enrich(Opportunity record) {
        CarData data = CaraDataService.getCarData(record.VIN__c);
        update new Opportunity(
            Id = record.Id, 
            VehicleBrand__c=  data.TovarniZnacka,
            VehicleType__c= data.VozidloDruh
        );
    }


    private Boolean shouldEnrich(Opportunity newOpportunity, Opportunity oldOpportunity){
        if(oldOpportunity == null ){
            //insert
            return newOpportunity.VIN__c != null;
        } 
        //update
        return newOpportunity.VIN__c != null && newOpportunity.VIN__c != oldOpportunity.VIN__c;
    }

    @Future(callout=true)
    private static void enrich(String vin){
        Opportunity record = [SELECT Id, VIN__c FROM Opportunity WHERE VIN__c = :vin LIMIT 1];
        new OpportunityCarData().enrich(record);
    }


}
