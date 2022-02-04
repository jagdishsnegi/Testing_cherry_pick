Public Class CaseTriggerHandler 
{
    /*
	Public Static Void syncAccount(List<Case> listCase)
    {
        List<String> idsOfCase=new List<String>();
        List<Case> listToUpdateCase= new List<Case>();
        for(Case ca:listCase)
        {
            idsOfCase.add(ca.id);
        }
        
        List<Case> listCa=[select id,contactid,contact.accountid from Case where id in :idsOfCase];
        
        for(Case c:listCa)
        {
            system.debug('heloooooooooooooooooooooooooooooo');
            if(c.contactid != null)
            {
                c.AccountId = c.contact.accountid;
			}
            listToUpdateCase.add(c);
        }
        
        Update listToUpdateCase;
    }
    */
    Public Static Void syncAccount1(List<Case> listCase)
    {
        for(Case c:listCase)
        {
            if(c.contactid != null)
            {
                c.AccountId = c.contact.accountid;
                
            }
        }
    }
}