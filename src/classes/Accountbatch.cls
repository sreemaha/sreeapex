global class Accountbatch implements Database.batchable<Sobject>
    {

   global Database.querylocator start(database.batchableContext bc)
        {
        string query;
        query= 'select id from Account where createdDate=LAST_N_DAYS:10';
            system.debug(query);
     return database.getquerylocator(query);
  
       } 

      global void  execute(database.batchablecontext bc, List<account>  Acclist)
     
       {
           system.debug(Acclist.size());
           delete Acclist;
          

       }
     global void finish(database.batchablecontext bc)
     {
          
}
    }