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
   - Typ: Percent (2,2)  
   - Popis: Sleva v procentech (10 % se ukládá jako 0.10)  

5. **AmountAfterDiscount__c**  
   - Typ: Currency (2)  
   - Popis: Výsledná částka po slevě (počítaná logikou v dalších úlohách)  

## Akceptační kritéria
- [ ] Všech 5 polí je vytvořeno na objektu **Opportunity**.  
- [ ] Pole mají správně nastavené typy a délky.  
- [ ] Pole jsou přidaná do **Opportunity Page Layout**, aby je bylo možné snadno testovat.  
- [ ] Vývojáři si tato pole stáhnou do svého projektu (repozitáře) pomocí SFDX/CLI.  

