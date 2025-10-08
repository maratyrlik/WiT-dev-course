public class CaraDataService {
    public static CarData getCarData(string vin) {
        try {
            HttpRequest req = new HttpRequest();
            req.setEndpoint('https://api.dataovozidlech.cz/api/vehicletechnicaldata/v2?vin=' + vin);
            req.setHeader('API_KEY', 'Wko32ryJpCx7CI2Lsu-yytkeJxRJ6dSE');
            req.setMethod('GET');

            Http http = new Http();
            HTTPResponse res = http.send(req);

            if (res.getStatusCode() != 200) {
                System.debug('❌ getCarDetails failed: ' + res.getStatusCode() + ' ' + res.getBody());
            }

            CarDataResponse response = (CarDataResponse) JSON.deserialize(res.getBody(), CarDataResponse.class);
            return response.Data; 

        } catch (Exception e) {
            System.debug('Error in callout: ' + e.getMessage());
            return null;
        }
    }

    public class CarDataResponse {
        public Integer Status;
        public CarData Data;
    }
}