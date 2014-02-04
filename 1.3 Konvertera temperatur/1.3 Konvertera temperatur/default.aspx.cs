using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1._3_Konvertera_temperatur.Model;

namespace _1._3_Konvertera_temperatur
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void convertButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                TempTable.Visible = true;
                var StartTemp = int.Parse(startTemp.Text);
                var EndTemp = int.Parse(endTemp.Text);
                var TempStep = int.Parse(tempStep.Text);

                TableHeaderRow tableHeaderRow = new TableHeaderRow();
                TableHeaderCell tableHeaderCell = new TableHeaderCell();
                TableHeaderCell tableHeaderCellFarenheit = new TableHeaderCell();

                if (CelFa.Checked)
                {
                    CellToFar.Text = "°C";
                    FarToCell.Text = "°F";
                }
                else if (FarCe.Checked)
                {
                    CellToFar.Text = "°F";
                    FarToCell.Text = "°C";
                }
                for (int temp = StartTemp; temp <= EndTemp; temp += TempStep)
                {
                    TableCell cellOne = new TableCell();
                    TableCell cellTwo = new TableCell();
                    TableRow row = new TableRow();
                    
                    TempTable.Rows.Add(row);
                    TempTable.Rows.Add(tableHeaderRow);
                    
                    row.Cells.Add(cellOne);
                    row.Cells.Add(cellTwo);

                    if (CelFa.Checked == true)
                    {
                        cellOne.Text = temp.ToString();
                        cellTwo.Text = TemperatureConverter.CelsiusToFahrenheit(temp).ToString();
                    }
                    else if (FarCe.Checked == true)
                    {
                        cellOne.Text = temp.ToString();
                        cellTwo.Text = TemperatureConverter.FahrenheitToCelsius(temp).ToString();
                    }
                }
            }
        }
    }
}
