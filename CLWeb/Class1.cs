﻿using System.Collections;
using System.Web;


public class GloballyAccessibleClass
{
    private GloballyAccessibleClass() { }

    //public static GloballyAccessibleClass Instance
    //{
    //    get
    //    {
    //        IDictionary items = HttpContext.Current.Items;
    //        if (!items.Contains("TheInstance"))
    //        {
    //            items["TheInstance"] = new GloballyAccessibleClass();
    //        }
    //        return items["TheInstance"] as GloballyAccessibleClass;
    //    }
    //}
}