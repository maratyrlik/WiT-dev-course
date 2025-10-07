## 🔗 10. Integrace - do SF
cíl: nechat spolusedícího vytáhnout si od vás nějaké opportunity

### 10.1. založit uživatele pro spolusedící(ho)
new user ve vašem orgu 
reset password  

## 10.2 vytvořite pro spolusedící(ho) external client app 
enable oAuth: true  
callback url: https://login.salesforce.com/services/oauth2/success  
scope: all  
Enable Client Credentials Flow: true  

po užložení zkopíruj client id a client secret - pošlete spolusedící(mu)

### 10.3. Vytvořte Named Credentials
deploy tento folder force-app/to-deploy/10_IntegraceIn  
goto: setup -> Auth Providers -> Salesforce -> Edit  
Consumer Key: client id od spolusedící(ho)  
Consumer Secret: client secret od spolusedící(ho)  

po uložení pošlete pošlete spolusedící(mu) "Callback URL"  

goto setup -> MyDomain  
pošlete pošlete spolusedící(mu) "Current My Domain URL"

### 10.4. aktualizujte ...
setup -> Named Credentials -> URL : "https://" + spolusedící(ho) myDomain  
setup -> External Client App Manager -> vase app -> setting -> oAuht setting -> Callback URL : spolusedící(ho) Callback URL  

### 10.5. přidej uživatelům permission set
obou uživatelům přidej permission set "Integration"
setup -> Permission set -> Integraion -> manager users

### 10.6. autorizujte external credentials
setup -> Named Credentials -> External Credentials -> Salesforce -> Principals -> named -> Authenticate  
pro přihlášení zadat username a password uživatele z prvního kroku


### 10.7. vytvořte apex třídu
vytahněte info o všech opportunitách z druhého orgu s pomocí named credentials  
výseldek (nebo error) vypište do konzole 