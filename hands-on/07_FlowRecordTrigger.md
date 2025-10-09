## 🔄 7. Automatizace bez kódu (pro kontext) - record trigger (místo apexu)

## Cíl
Implementovat stejnou logiku jako v [Apexu](hands-on/04_ApexSync.md) pomocí **Record-Triggered Flow** a porovnat přístupy.

## Zadání
Vytvořte **Record-Triggered Flow** na objektu **Opportunity**, který:

- reaguje na **insert** i **update** záznamu,
- vyberte typ flow: before/after
- provede výpočet `AmountAfterDiscount__c` pouze tehdy, když to dává smysl:

### Podmínky pro výpočet
- `Amount` je **vyplněné** a **> 0**  
- `DiscountPercent__c` je **vyplněné** a **> 0**  
- u **update** navíc platí, že se **změnil** `Amount` **nebo** `DiscountPercent__c`

### Vzorec
- AmountAfterDiscount__c = Amount * (1 - DiscountPercent__c/100)

## Požadované chování
- Při **vložení** nové Opportunity a splnění podmínek se spočítá a nastaví `AmountAfterDiscount__c`.
- Při **aktualizaci** se hodnota přepočítá pouze v případě změny `Amount` nebo `DiscountPercent__c` a splnění podmínek.

## Akceptační kritéria
- [ ] Flow je spuštěno pro insert i update a nastavuje `AmountAfterDiscount__c` dle výše uvedených pravidel.
- [ ] Výpočet neprobíhá, pokud je `Amount` prázdné/≤ 0 nebo `DiscountPercent__c` prázdné/≤ 0.
- [ ] Na update se výpočet provede jen při změně `Amount` nebo `DiscountPercent__c`.
