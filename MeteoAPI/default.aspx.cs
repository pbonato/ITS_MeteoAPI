using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

namespace MeteoAPI
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // http://api.openweathermap.org/data/2.5/weather?lang=it&units=metric&q=thiene&appid=8de3e8c1d8c893c04f412c2e5bb517ea
            string APIKEY = "8de3e8c1d8c893c04f412c2e5bb517ea";
            string baseURL = "http://api.openweathermap.org/data/2.5/";

            string reqCity = txtCitta.Text;

            // COMPOSIZIONE Url
            string myURL = baseURL + $"weather?lang=it&units=metric&q={reqCity}&appid=" + APIKEY;
            
            // CREAZIONE OGGETTO REQUEST
            WebRequest request = WebRequest.Create(myURL);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream dataStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string responseFromServer = reader.ReadToEnd();

            reader.Close();
            dataStream.Close();
            response.Close();

            // CONVERSIONE JSON TO CLASS
            WeatherData wd = new WeatherData();
            wd = Newtonsoft.Json.JsonConvert.DeserializeObject<WeatherData>(responseFromServer);

            // DISPLAY HTML PAGE
            lblLatitudine.Text = wd.coord.lat.ToString();
            lblLongitudine.Text = wd.coord.lon.ToString();
            lbltemperatura.Text = wd.main.temp.ToString();
            lblTempMassima.Text = wd.main.temp_max.ToString();
            lblTempMinima.Text = wd.main.temp_min.ToString();

        }
    }
}