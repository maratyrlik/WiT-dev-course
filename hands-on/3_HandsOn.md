## 📊 3. Data model a práce s daty  
### 3.1. Vytvořte nové fieldy na objektu Opporutnity
DiscountPercent__c – typ Percent (3 před, 2 za)  
AmountAfterDiscount__c – typ Currency (16 před, 2 za)  
VIN__c - typ text (255 znaků)
### 3.2. retreivněte si pole z orgu do VSC
by defalt do složky force-app/main/default...
### 3.2. naplňte nové pole daty u jednoho záznamu
apex scriptem [fillDummOpportunityData.apex](../scripts/apex/fillDummOpportunityData.apex) naplňte data na opportunitu  
SOQLem [opportunity.soql](../scripts/soql/opportunity.soql) ověřte že se data propsala