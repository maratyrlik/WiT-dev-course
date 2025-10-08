public class OpportunityCarDataQueueable implements Queueable, Database.AllowsCallouts {
    private List<Opportunity> opportunities;

    public OpportunityCarDataQueueable(List<Opportunity> opps) {
        this.opportunities = opps;
    }

    public void execute(QueueableContext context) {
        OpPortunity toEnrich = this.opportunities.remove(0);
        new OpportunityCarData().enrich(toEnrich);


        if (!this.opportunities.isEmpty()) {
            System.enqueueJob(new OpportunityCarDataQueueable(this.opportunities));
        }
    }
}

