using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.LevenshteinDistance
{
    /// <summary>
    /// Query options for the Levenshtein Distance API
    /// </summary>
    public class LevenshteinDistanceQueryOptions
    {
        /// <summary>
        /// First string to compare (max 10,000 characters)
        /// Example: kitten
        /// </summary>
        [JsonProperty("string1")]
        public string String1 { get; set; }

        /// <summary>
        /// Second string to compare (max 10,000 characters)
        /// Example: sitting
        /// </summary>
        [JsonProperty("string2")]
        public string String2 { get; set; }
    }
}
