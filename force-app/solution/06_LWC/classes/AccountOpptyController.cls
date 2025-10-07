public with sharing class AccountOpptyController {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunitiesByAccount(Id accountId) {
        if (accountId == null) return new List<Opportunity>();
        return [
            SELECT Id, Name, Amount, DiscountPercent__c, AmountAfterDiscount__c
            FROM Opportunity
            WHERE AccountId = :accountId
        ];
    }
}