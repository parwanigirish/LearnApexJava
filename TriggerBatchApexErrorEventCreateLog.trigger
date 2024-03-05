trigger BatchApexErrorEventTrigger on BatchApexErrorEvent (after insert) {
    
    List < Error_Log__c > errorLogs = new List < Error_Log__c >();

    for(BatchApexErrorEvent evt:Trigger.new) {
        Error_Log__c objErrorLog = new Error_Log__c(
            Record_Ids__c = evt.JobScope,
            Error_Message__c = evt.Message,
            Job_Id__c = evt.AsyncApexJobId
        );
        errorLogs.add( objErrorLog );
    }
    
    if ( errorLogs.size() > 0 ) {
        insert errorLogs;        
    }

}
