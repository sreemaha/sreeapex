Public class AccountcontrollerExtenstion

    {
    public Account account{get; set;}
    public String accname = 'EXPRESSPAYMENT';
    public AccountcontrollerExtenstion(ApexPages.StandardController stdController) {
        this.account= (Account)stdController.getRecord();
        }
    
        
      public Pagereference save() 
         {
         account.name= account.name + accname;
         insert account;
         PageReference acctPage = new ApexPages.StandardController(account).view();
        acctPage.setRedirect(true);
        return acctPage;
        }
        
    
       }