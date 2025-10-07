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

### 10.1. Vytvořit AuthProvider - váš org
Consumer Key = client id (z cílového orgu)
Consumer Secret = client secret (z cílového orgu)
default scopes = refresh_token full api id web offline_access

po uložení pošlete spolusedící(mu) "Callback URL"
pošlete taky "Current My Domain URL" ze sutup -> myDomain

### 10.1. vytvořete named credentials - external credentials
setup -> Named Credentials  -> záložka External credentials  
Authentication Protocol = oAuth2.0
Authentication Protocol
....


přidat principal
authenticovat - hodí vás to na login page - použíjde přihlašováky do orgu spolusedící(ho)

### 10.1. nový permission set
... přidat tam daný principal

### 10.1. vytvořete named credentials
setup -> Named Credentials  -> záložka Named credentials  
nový



### 10.1. spustit apex
vytahněte info o všech opportunitách z druhého orgu s pomocí named credentials
výseldek (nebo error) vypište do konzole 





zkusit to zaverzovat aby to nemuseli klikat








