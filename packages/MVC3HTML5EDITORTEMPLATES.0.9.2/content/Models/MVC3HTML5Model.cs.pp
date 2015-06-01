using System;
using System.ComponentModel.DataAnnotations;

namespace $rootnamespace$.Models
{
    public class MVC3HTML5Model
    {
        [DataType(DataType.Text)]
        public string Name {get; set;}

        [DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        
        [DataType(DataType.Url)]
        public string Url { get; set; }

        [DataType(DataType.Date)]
        public DateTime TodaysDate { get; set; }

        [DataType(DataType.DateTime)]
        public DateTime MeetingStart { get; set; }

        [DataType(DataType.Time)]
        public DateTime TheTime { get; set; }

        [DataType("Range")]
        public decimal EstimatedHours { get; set; }
    }
}