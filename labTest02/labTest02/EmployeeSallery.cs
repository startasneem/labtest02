using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace labTest02
{
    public class EmployeeSallery
    {
        public string EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string Designation { get; set; }
        public string Email { get; set; }
        public double BasicSallery { get;  set; }
        public double ConvRate { get;  set; }
        public double HouseRent { get; set; }
        public double TotalAmount { get; set; }

        public double GetConveyance()
        {
            return (BasicSallery * ConvRate) / 100;
        }

        public double GetHouseRent()
        {
            return (BasicSallery * HouseRent) / 100;
        }

        public double GetTotalSallery()
        {
            return BasicSallery + GetConveyance() + GetHouseRent();
        }

        public double GetTotalAmount()
        {
            return TotalAmount += GetTotalSallery();
        }

    }
}