public without sharing class AccountService {
    
    public static void setRatingBasedOnIndustry(List<Account> lAccounts){
        for(Account acc : lAccounts){
            if(acc.Industry == 'Banking'){
                acc.Rating = 'Hot';
            }
        }        
    }
}
