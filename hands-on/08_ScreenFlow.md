## 🔄 8. Screen Flow z tlačítka na Accountu (Create Opportunity + přehled)

## Cíl
Založit novou Opportunity přes **Screen Flow** spuštěné z **Buttonu** na stránce Accountu a následně zobrazit seznam souvisejících Opportunities.

## Zadání
- Na **Account** record page přidejte **vlastní tlačítko (Button)**, které spustí vaše **Screen Flow**.
- Flow musí:
  1. Přijmout **recordId** aktuálního Accountu.
  2. Na první obrazovce vyžádat vstupy pro novou Opportunity (minimálně):
     - `Name`
     - `CloseDate`
     - `StageName`
     - `Amount`
     - `DiscountPercent__c`
  3. Při vytvoření Opportunity nastavit `AccountId = recordId`.
  4. Po uložení Opportunity zobrazit **přehled všech Opportunities** daného Accountu
     se sloupci:
     - **Name**
     - **Amount**
     - **DiscountPercent__c**
     - **AmountAfterDiscount__c**
  5. Zajistit, že nově vytvořená Opportunity je v přehledu vidět.


## Akceptační kritéria
- [ ] Na stránce **Account** je viditelné tlačítko, které spouští Flow.
- [ ] Flow přijímá **recordId** a při vytváření Opportunity nastavuje `AccountId = recordId`.
- [ ] Formulář ve Flow obsahuje minimálně: Name, CloseDate, StageName, Amount, DiscountPercent__c.
- [ ] Po potvrzení se vytvoří **jedna** nová Opportunity.
- [ ] Následná obrazovka zobrazuje **seznam všech Opportunities** daného Accountu
      se sloupci: Name, Amount, DiscountPercent__c, AmountAfterDiscount__c.
- [ ] Nově vytvořená Opportunity je v seznamu vidět.
- [ ] Řešení je přehledné a bez zbytečných kroků.
