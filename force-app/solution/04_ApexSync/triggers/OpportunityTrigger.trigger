trigger OpportunityTrigger on Opportunity (before insert, before update) {
    OpportunityDiscountService.recalc(Trigger.new, Trigger.oldMap);
}
