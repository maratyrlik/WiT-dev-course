# Úkol 02 – Synchronní Apex (Opportunity sleva)

## Zadání
- Napište **trigger** na objektu **Opportunity**, který poběží při **insertu** a **update**.
- Rozmyslete si, jestli je pro tento scénář lepší použít **before** nebo **after** trigger.  
- Trigger musí splňovat následující pravidla:  
  - Pokud je `Amount > 0` a `DiscountPercent__c` je vyplněné, spočítejte `AmountAfterDiscount__c`:
    ```
    AmountAfterDiscount__c = Amount * (1 - DiscountPercent__c/100)
    ```
  - Na **insertu** se výpočet provede vždy, když jsou obě hodnoty (`Amount` i `DiscountPercent__c`) vyplněné a > 0.  
  - Na **update** se výpočet provede pouze tehdy, pokud se změnil `Amount` nebo `DiscountPercent__c`.  

## Akceptační kritéria
- [ ] `AmountAfterDiscount__c` se správně počítá na základě `Amount` a `DiscountPercent__c`.  
- [ ] Na insertu funguje výpočet vždy, pokud je procento vyplněné.  
- [ ] Na update se výpočet provede jen při změně `Amount` nebo `DiscountPercent__c`.  
- [ ] Kód je bulk-safe (pracuje s kolekcí `Trigger.new`). 
