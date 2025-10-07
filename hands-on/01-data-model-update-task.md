# Úkol 01 – Příprava prostředí (nová pole na Opportunity)

## Zadání
Na objektu **Opportunity** vytvořte následujících 5 nových polí. Tato pole budete používat v dalších úlohách.

1. **VIN__c**  
   - Typ: Text  
   - Délka: 17 znaků  

2. **VehicleBrand__c**  
   - Typ: Text  
   - Délka: 50 znaků  

3. **VehicleType__c**  
   - Typ: Text  
   - Délka: 50 znaků  

4. **DiscountPercent__c**  
   - Typ: Percent  
   - Popis: Sleva v procentech

5. **AmountAfterDiscount__c**  
   - Typ: Currency
   - Popis: Výsledná částka po slevě (počítaná logikou v dalších úlohách) 

### retreivněte si pole z orgu do VSC
by defalt do složky force-app/main/default...
### naplňte nové pole daty u jednoho záznamu
apex scriptem [fillDummOpportunityData.apex](../scripts/apex/fillDummOpportunityData.apex) naplňte data na opportunitu  
SOQLem [opportunity.soql](../scripts/soql/opportunity.soql) ověřte že se data propsala