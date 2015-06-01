using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

using System.Web;


namespace CLWeb
{
    public static class Helper
    {

        public const string assetJs="/cgi1/js/";
        public const string assetCss = "/cgi1/css/";
        public const string asset = "/cgi1/";
        public const string content = "/Content/";
        public static string assetCgi
        {
            get { return "kjhkjhjk"; }
        }

        //public static string currentEmp_id="EmployeeData";

        public static string ConfigByref(string configKey)
        {
            return System.Configuration.ConfigurationSettings.AppSettings[configKey];
        }
        public static int cashAccID
        {
            get { return CInt(System.Configuration.ConfigurationSettings.AppSettings["PayCashAccID"]); }
        }
        public static int debitAccID
        {
            get { return CInt(System.Configuration.ConfigurationSettings.AppSettings["PayDebitAccID"]); }
        }
        public static int creditAccID
        {
            get { return CInt(System.Configuration.ConfigurationSettings.AppSettings["PayCreditAccID"]); }
        }

        public static int webEmpid
        {
            get {
                int i = 0;
                try
                {
                    return ToInt(System.Configuration.ConfigurationSettings.AppSettings["webempid"]);
                }
                catch { return i; }
            
            }
        }

      //  public static int currentEmp_id = 0;
       /// public static string empBaseCurr="";
        //public static string currentUser = "";
        public static string sessionData = "EmployeeData";
        public static int ToInt(int? str)
        {
            int i = 0;
            if(str!=null)
                Int32.TryParse(str.ToString(), out i);
            return i;
        }

        public static int ToInt(string str)
        {
            int i = 0;
            Int32.TryParse(str, out i);
            return i;
        }
        public static DateTime ToDate(string str)
        {
            DateTime d = new DateTime();
            DateTime.TryParse(str, out d);
            return d;
        }
        public static bool isDate(string str)
        {
            bool isD = true;
            DateTime d;
            if(!DateTime.TryParse(str, out d))
                 isD =false;
            return isD;
        }
    
        public static String CleanInput(string strIn)
        {
            try
            {
                if (strIn.Trim().Length == 0)
                {
                    return String.Empty;
                }

                strIn = Regex.Replace(strIn, @"'", "").Trim();
                return strIn;
            }
            catch { }

            return String.Empty;
        }
        /// <summary>
        /// Number grater than zero
        /// </summary>
        /// <param name="strNumber"></param>
        /// <returns></returns>
        public static bool IsWholeNumber(String strNumber)
        {
            Regex objNotWholePattern = new Regex("[^0-9]");
            return !objNotWholePattern.IsMatch(strNumber);
        }
        public static string supperAdmin
        {
            get { return System.Configuration.ConfigurationSettings.AppSettings["supperAdmin"]; }
        }

        public static bool CBool(string str)
        {
            bool isTrue = false;
            bool.TryParse(str, out isTrue);
            return isTrue;
        }
        public static bool IsInteger(string str)
        {
            str = str.Trim();
            return (Regex.IsMatch(str, @"^[\+\-]?\d+$"));
        }

       
        public static int CInt(string str)
        {
            int i = 0;
            Int32.TryParse(str, out i);
            return i;
        }
        public static double CDouble(string str)
        {
            double i = 0;
            Double.TryParse(str, out i);
            return i;
        }
        public static decimal CDecimal(string str)
        {
            Decimal i = 0;
            Decimal.TryParse(str, out i);
            return i;
        }
        public static string FormatNumber2(string str)
        {
            str = str.Replace(",", String.Empty);
                return String.Format("{0:#,#.00}", CDouble(str));
          
        }
        public static string FormatNumber2(object nbr)
        {
          return  FormatNumber2(nbr.ToString());
        }
        public static string FormatNumber6(string str)
        {
                return String.Format("{0:N8}", CDouble(str));
        }
        public static string FormatNumber6(object nbr)
        {
            return FormatNumber6(nbr.ToString());
        }
        public static string FormatNumber0(object str)
        {
                return String.Format("{0:#,#.##}", CDouble(str.ToString()));
        }
        public static string CDate(string date)
        {
            DateTime mydate = DateTime.Now;//.ToString("MM/dd/yyyy");
            DateTime.TryParse(date, out mydate);
            return mydate.ToString("MM/dd/yyyy"); 
        }

       public static int CDateInt(object date)
        {
            try
            {
                DateTime date2 = Convert.ToDateTime(date) ;
                string s = date2.Year.ToString() + date2.Month.ToString("00") + date2.Day.ToString("00");
                return Convert.ToInt32(s);
            }
            catch { return 0; }
        }

    }
    
}
