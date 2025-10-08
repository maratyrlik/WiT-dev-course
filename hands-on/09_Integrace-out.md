## 🔗 9. Integrace - ze SF
cíl: obohatit záznam opportunity o data z externí služby

### 9.1. vytvořit třídu 
1 public metoda přijímá parametr vin (string) s návratovým typem - apex třída CarData  
endpoint: https://api.dataovozidlech.cz/api/vehicletechnicaldata/v2?vin={VIN}
header: API_KEY => Wko32ryJpCx7CI2Lsu-yytkeJxRJ6dSE
metoda: GET

### 9.2. updatuj záznam z anonymního apexu
VIN: YV1UZK5VDM1846884
VehicleBrand__c =  TovarniZnacka
VehicleType__c = VozidloDruh

