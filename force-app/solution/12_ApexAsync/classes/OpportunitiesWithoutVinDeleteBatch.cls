public class OpportunitiesWithoutVinDeleteBatch implements Database.Batchable<SObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([
            SELECT Id FROM Opportunity WHERE VIN__c = NULL
        ]);
    }

    public void execute(Database.BatchableContext BC, List<SObject> scope) {
        delete scope;

    }

    public void finish(Database.BatchableContext BC) {
        //empty
    }
}
