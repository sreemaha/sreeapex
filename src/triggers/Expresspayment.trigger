trigger Expresspayment  on Expaccounts__c (after insert)
 {
   for (Expaccounts__C acc : Trigger.new)
   {
      if(acc.Edits__C == 'Batch')
      {
       Batch__c expb = new batch__c();
       expb.businesscontact__C = 'sree.kondapaneni@gmail.com';
       Insert  expb;
        }
       }
}