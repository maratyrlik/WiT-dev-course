trigger OpportunityTrigger on Opportunity (before insert, before update, after update, after insert) {
    if (Trigger.isInsert && Trigger.isBefore) {
        OpportunityDiscountService.recalc(Trigger.new, Trigger.oldMap);
    }

    if (Trigger.isUpdate && Trigger.isBefore) {
        OpportunityDiscountService.recalc(Trigger.new, Trigger.oldMap);
    }

    if (Trigger.isInsert && Trigger.isAfter) {
       new OpportunityCarData().enrich(Trigger.new, Trigger.oldMap);
    }

    if (Trigger.isUpdate && Trigger.isAfter) {
       new OpportunityCarData().enrich(Trigger.new, Trigger.oldMap);
    }
}
