SFPD Incidents
====
Accumulated San Francisco Police Incident data from <a href="https://data.sfgov.org/Public-Safety/SFPD-Incidents-Previous-Three-Months/tmnf-yvry" target="sf.gov">data.sfgov.org</a> 

The <a href="https://data.sfgov.org/Public-Safety/SFPD-Incidents-Previous-Three-Months/tmnf-yvry" target="sf.gov">data.sfgov.org</a> source provides a running 3 months of data.  What you find here are collection of:
   * raw data downloads in CSV format, going back in time
   * R scripts, used to merge & pre-process those data
   * various HTML and .Rmd output files related to analyses on <a href="http://redheadedstepdata.io" target="rhsd.io">redheadedstepdata.io</a>

## Files
| -------------   | ------------- |
| Incidents.csv   | single CSV file, with merged unique(Incidents) data from all date ranges |
| SFPD_Incidents_YYYY.MM.DD-YYYY.MM.DD.csv  | CSV file with raw data downloaded for the specified date range  |

## Scripts
| -------------   | ------------- |
| sfpd-incidents.Rmd | R Markdown File for initial analysis found at<a href="http://redheadedstepdata.io/sfpd-incidents/" target="rhsd.io"redheadedstepdata.io/sfpd-incidents"</a>
| merge_SFPD_incidents.R | Merge unique(Incidents) from all date range CSV, consolidate bottom 10% of Categories into "OTHER OFFENSES", write Incidents.csv |
| Folders         | Contents |

## Folders
| -------------   | ------------- |
| figure          | directory with graphics output by .Rmd |


