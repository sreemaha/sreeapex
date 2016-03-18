trigger expay on Account (after insert)
 {
   for (Account acc : Trigger.new)
   {
      if(acc.Edits__C == 'Batch')
      {
       Batch__c expb = new batch__c();
       expb.businesscontact__C = 'sree.kondapaneni@gmail.com';
       Expb.AccountID__C = acc.ID;
       Insert  expb;
        }
       }
}