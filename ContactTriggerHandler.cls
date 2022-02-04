Public Class ContactTriggerHandler 
{
    Public Static Void updateCaseAccount(List<Contact> newListContact, List<Contact> oldListContact , Map<id,Contact> newMapListContact , Map<id,Contact> oldMapListContact)
    {
        List<Case> caseToUpdate = new List<Case>();
        List<String> idsOfCase = new List<String>();
        
        for(Contact con : newListContact)
        {
            idsOfCase.add(con.id);
        }
        
        List<Case> listCase = [select id,accountid,contactid from case where contactid in : idsOfCase];
        
        
        for(Case ca : listCase)
        {
            if(newMapListContact.get(ca.contactid).accountid != oldMapListContact.get(ca.contactid).accountid)
            {
                ca.AccountId=newMapListContact.get(ca.contactid).accountid;
            }
            caseToUpdate.add(ca);
        }
        
        Update caseToUpdate;
        
        
        
        
    }

}