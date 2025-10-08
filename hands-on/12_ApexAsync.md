## 🧑‍💻 12. Apex - 2.0 asynchronní

### 12.1. po změně VIN aktualizovat data o autě na Opportunitě
při vytvoření i updatu
volat API jen při změně VIN


future (nemužu volat api z triggeru)

trigger - firuje
service - rozhoduje
ApiService - volá  data

//zkusit future i queueable (at si zvolí čím začnout)


### 12.2. automatické mazání nekompletních Opportunit
batch job který promaže Opportunity be VIN
naplánovat na každou neděli večer


