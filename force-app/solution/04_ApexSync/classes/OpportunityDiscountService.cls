public with sharing class OpportunityDiscountService {

    public static void recalc(List<Opportunity> newList, Map<Id, Opportunity> oldMap) {
        Boolean isInsert = (oldMap == null);

        for (Opportunity o : newList) {
            if (o.Amount == null || o.Amount <= 0) continue;
            if (o.DiscountPercent__c == null) continue;

            if (!isInsert) {
                Opportunity oldRec = oldMap.get(o.Id);
                if (oldRec != null) {
                    Boolean amountChanged  = (o.Amount != oldRec.Amount);
                    Boolean percentChanged = (o.DiscountPercent__c != oldRec.DiscountPercent__c);
                    if (!(amountChanged || percentChanged)) continue;
                }
            }

            // Percento sa v API vracia ako celé číslo (10 = 10 %), preto /100
            o.AmountAfterDiscount__c = o.Amount * (1 - (o.DiscountPercent__c / 100));
        }
    }
}
