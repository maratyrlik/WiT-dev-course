global class OpportunitiesWithoutVinBarchScheduler implements Schedulable {

    global void execute(SchedulableContext sc) {
        Database.executeBatch(new OpportunitiesWithoutVinDeleteBatch(), 200);
    }
}
