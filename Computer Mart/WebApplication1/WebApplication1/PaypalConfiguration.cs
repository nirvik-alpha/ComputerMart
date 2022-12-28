using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class PaypalConfiguration
    {

        public readonly static string ClientId;
        public readonly static string ClientSecret;

        static PaypalConfiguration()
        {
            var config = GetConfig();
            ClientId = "AUwQ-hviZRYwtTXjMgsrLGh3FnyzddNMiymJhSss0gydtcfsWwJd3QYmXeV71ggd7bsP0s2cIal8JqyP";
            ClientSecret = "EDTHmeeEEc0XvljU2Oj7_QOLGZDWudopuSR8TEsWz2TLc4j6q7c2lHMkFlzl806nBjGZynOWgJpaDUDI";
        }

        public static Dictionary<string, string> GetConfig()
        {
            return PayPal.Api.ConfigManager.Instance.GetProperties();
        }

        private static string GetAccessToken()
        {
            // getting accesstocken from paypal
            string accessToken = new OAuthTokenCredential(ClientId, ClientSecret, GetConfig()).GetAccessToken();
            return accessToken;
        }

        public static APIContext GetAPIContext()
        {
            // return apicontext object by invoking it with the accesstoken
            APIContext apiContext = new APIContext(GetAccessToken());
            apiContext.Config = GetConfig();
            return apiContext;
        }
    }
}