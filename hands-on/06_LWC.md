### 🌐 6. Lightning Platform & UI vývoj - programovací

## Zadání
- Na stránku **Account** přidejte vlastní **LWC komponentu**.
- Komponenta načte všechny **Opportunities** patřící k tomuto Accountu.
- Data zobrazte v **`lightning-datatable`** se 4 sloupci:
  - **Name** (klikací odkaz na záznam Opportunity)
  - **Amount**
  - **Discount %**
  - **Amount After Discount**
- Pokud nejsou žádné záznamy → zobrazte text **„No opportunities found.“**
- Použijte **Apex metodu** pro načtení dat.

## Akceptační kritéria
- [ ] Komponenta je vložená na **Account record page** a používá `recordId`.
- [ ] Tabulka zobrazuje přesně 4 sloupce s uvedenými názvy.
- [ ] Sloupec **Name** je klikací odkaz na detail Opportunity.
- [ ] Při nulovém výsledku se zobrazuje text **„No opportunities found.“**
- [ ] Načtení dat probíhá přes **Apex** (cacheable).
