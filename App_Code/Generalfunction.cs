using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
/// <summary>
/// Summary description for Generalfunction
/// </summary>
public class Generalfunction
{
    public OleDbConnection cn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|/organic.mdb;Persist Security Info=True");
   public OleDbCommand cmd = new OleDbCommand();
   public OleDbDataReader dr;
	public Generalfunction()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void connectionopen()
    {
        if (cn.State == 0)
        {
            cn.Open();
            cmd.Connection = cn;

        
        }

    }
    public void connectionclose()
    {
        cn.Close();
        cmd.Dispose();
        cn.Dispose();
    }

    public string iud(string query,String operation)
    {
        cmd.CommandText = query;
      int i=cmd.ExecuteNonQuery();
      if (i == 0)
      {
          return "Record Not " + operation;

      }
      else
      {
          return "Record " + operation;
      
      }
     
    }

}