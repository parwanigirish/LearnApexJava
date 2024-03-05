global class BatchApexRaisePlatformEvents implements Database.Batchable<sObject>, Database.RaisesPlatformEvents {
 
    global Database.QueryLocator start( Database.BatchableContext BC ) {
        String query = 'SELECT Id,Name FROM Account';
        return Database.getQueryLocator( query );
    }
   
    global void execute( Database.BatchableContext BC, List< Account > scope ) {
         for ( Account a : scope ) {
             a.Name = null;
         }
         update scope;
    }
    
    global void finish( Database.BatchableContext BC ) {
    }
 
}
