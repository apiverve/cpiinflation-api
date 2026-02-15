using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CPIInflation
{
    /// <summary>
    /// Query options for the CPI Inflation API
    /// </summary>
    public class CPIInflationQueryOptions
    {
        /// <summary>
        /// Optional date in YYYY-MM format for historical lookup. Omit for current data.
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }

        /// <summary>
        /// Optional category filter: all, food, housing, apparel, transportation, medical, recreation, education, gasoline, electricity
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }
    }
}
