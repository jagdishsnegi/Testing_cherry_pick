/*Version History
 * Date: 02-Mar-2020
 * Class Name: AccountMergeStatus
 * Created By: Mindtree(Sanjay Pandey)
 * Related to: "Account Merge Object", Jira Ref: APPS-1204(Lightning Migration Project)
 */
public with Sharing class AccountMergeStatus {
    @AuraEnabled
    public static Account_Merge__c getAccountMergeStatus(String accountmergeid) {

        Account_Merge__c ams = [SELECT Id, Name, Status__c FROM Account_Merge__c WHERE Id =: accountmergeid
            AND Status__c = 'Processed'
        ];
        system.debug('ams@123'+ams);
        return ams;
    }
}