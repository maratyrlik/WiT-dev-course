@IsTest
private class OpportunityTriggerTest {
    @IsTest
    static void insertTest() {
        Opportunity o = new Opportunity(
            Name = 'InsertTest',
            StageName = 'Prospecting',
            CloseDate = System.today().addDays(7),
            Amount = 1000,
            DiscountPercent__c = 10
        );
        insert o;

        Opportunity r = [SELECT AmountAfterDiscount__c FROM Opportunity WHERE Id = :o.Id];
        Assert.areEqual(900, r.AmountAfterDiscount__c, 'AmountAfterDiscount__c must equal 900');
    }

    @IsTest
    static void updateTest() {
        Opportunity o = new Opportunity(
            Name = 'UpdateTest',
            StageName = 'Prospecting',
            CloseDate = System.today().addDays(7),
            Amount = 1000,
            DiscountPercent__c = 10
        );
        insert o;

        o.Amount = 2000;
        o.DiscountPercent__c = 20;
        update o;

        Opportunity r = [SELECT AmountAfterDiscount__c FROM Opportunity WHERE Id = :o.Id];
        Assert.areEqual(1600, r.AmountAfterDiscount__c, 'AmountAfterDiscount__c must equal 1600');
    }
}
