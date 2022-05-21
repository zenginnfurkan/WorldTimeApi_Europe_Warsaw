using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Net;
using System.Web.Script.Serialization;

namespace Zad_WorldTimeApi_Europe_Warsaw
{
    public partial class WarsawTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getTime(object sender, EventArgs e)
        {
            string apiURL = String.Format("http://worldtimeapi.org/api/timezone/Europe/Warsaw");
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(apiURL);
                WorldTimeAPi timeinfo = (new JavaScriptSerializer()).Deserialize<WorldTimeAPi>(json);
                lblTimeZone.Text = timeinfo.timezone;
                DateTime warsawTime = DateTime.Parse(timeinfo.datetime);
                lblDateTime.Text = warsawTime.AddHours(1).ToShortTimeString();
            }
        }

        public class WorldTimeAPi
        {
            public string datetime { get; set; }
            public string timezone { get; set; }
        }
    }
}