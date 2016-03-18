Global class leadsourcetrailhead implements Database.Batchable<sObject>
{
  Global database.QueryLocator start(Database.BatchableContext bc)
  {
      string query;
       query = 'select id from Lead';
        return database.getQueryLocator(query);
      
  } 
    global void execute(Database.BatchableContext bc, list<Lead> Leadlist)
    {
        
        for(Lead tmp : Leadlist){
            tmp.LeadSource='Dreamforce';
            update tmp;
        }
        
    }
    global void finish(Database.BatchableContext bc){
        
    }
}