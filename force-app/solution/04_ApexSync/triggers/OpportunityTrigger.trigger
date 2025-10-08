trigger OpportunityTrigger on Opportunity (before insert, before update) {
    if (Trigger.isInsert && Trigger.isBefore) {
        OpportunityDiscountService.recalc(Trigger.new, Trigger.oldMap);
    }

    if (Trigger.isUpdate && Trigger.isBefore) {
        OpportunityDiscountService.recalc(Trigger.new, Trigger.oldMap);
    }
}
