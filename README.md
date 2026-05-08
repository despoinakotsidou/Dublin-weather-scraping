# Dublin Weather Data Scraping & Analysis

A comprehensive R-based project for web scraping, analyzing, and visualizing weather data from Dublin using the timeanddate.com API. This project demonstrates modern data acquisition techniques, data cleaning pipelines, and professional data visualization practices.

## 📋 Overview

This repository contains an in-depth analysis of Dublin's weather patterns through three distinct data acquisition approaches:

- **48-Hour Weather Forecast**: Short-term forecast data extraction and analysis
- **Hourly Forecast Analysis**: Detailed 24-hour trends with temperature, wind, and humidity visualization
- **Annual Climate Averages**: Long-term monthly climate patterns and seasonal trends

## 🎯 Features

✨ **Web Scraping with rvest**: Extract structured data from HTML tables  
📊 **Data Cleaning & Wrangling**: Use `dplyr` for efficient data transformation  
📈 **Professional Visualizations**: `ggplot2` plots with publication-ready formatting  
🎨 **Styled Tables**: `kableExtra` for beautifully formatted output  
📄 **Reproducible Analysis**: Complete R Markdown documentation with executable code

## 📦 Requirements

### R Packages

- `rvest` - Web scraping and HTML parsing
- `dplyr` - Data manipulation and transformation
- `httr` - HTTP requests and headers
- `tidyr` - Data reshaping
- `ggplot2` - Data visualization
- `knitr` - Dynamic report generation
- `kableExtra` - Table formatting
- `stringr` - String processing

### Installation

```r
# Install required packages
packages <- c("rvest", "dplyr", "httr", "tidyr", "ggplot2", "knitr", "kableExtra", "stringr")
install.packages(packages)
```

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/dublin-weather-scraping.git
   cd dublin-weather-scraping
   ```

2. **Install dependencies**
   ```r
   source("install_dependencies.R")
   ```

3. **Run the analysis**
   ```bash
   Rscript -e "rmarkdown::render('Data_Acquisition.Rmd')"
   # Or open in RStudio and click "Knit"
   ```

4. **View results**
   - HTML output: `Data_Acquisition.html`
   - PDF output: `Data_Acquisition.pdf`

## 📊 Project Structure

```
dublin-weather-scraping/
├── README.md                    # This file
├── LICENSE                      # MIT License
├── .gitignore                   # Git ignore rules
├── REQUIREMENTS.md              # Detailed dependency documentation
├── install_dependencies.R       # R script to install packages
├── Data_Acquisition.Rmd         # Main analysis file
└── output/                      # Generated reports (in .gitignore)
    ├── Data_Acquisition.html
    └── Data_Acquisition.pdf
```

## 📋 Analysis Details

### Section 1: 48-Hour Weather Forecast

Extracts and cleans weather forecast data from timeanddate.com for Dublin:

- Scrapes the "Forecast for the next 48 hours" table
- Combines day and period information for meaningful column headers
- Produces a clean, structured dataset ready for analysis
- Data source: `https://www.timeanddate.com/weather/ireland/dublin`

**Key Techniques:**
- HTML element selection using CSS selectors
- Header manipulation and row restructuring
- Data cleaning with `dplyr`

### Section 2: Detailed Hourly Forecast (24 Hours)

Analyzes hourly weather predictions with comprehensive visualizations:

- Extracts time, temperature, wind speed, and humidity
- Cleans and filters data for analysis
- Creates multi-panel visualizations showing weather trends
- Data source: `https://www.timeanddate.com/weather/ireland/dublin/hourly`

**Visualizations:**
- Area plots with line overlays
- Custom color schemes for different weather metrics
- Faceted plots for easy comparison

### Section 3: Annual Climate Averages

Historical climate data for Dublin showing long-term patterns:

- Scrapes monthly climate statistics (temperature and precipitation)
- Extracts structured data from nested HTML elements
- Creates dual-axis plots showing temperature ranges and precipitation
- Data source: `https://www.timeanddate.com/weather/ireland/dublin/climate`

**Advanced Features:**
- Error bars for min/max temperature ranges
- Dual y-axis for comparing different scales
- Month-level seasonal analysis

## 🎨 Visualization Highlights

All plots are created with:
- Custom color palettes for clarity
- Professional theme styling
- Clear legends and axis labels
- Publication-ready formatting

## 🔍 Data Quality

The analysis implements best practices for data quality:

- ✅ Automatic whitespace trimming
- ✅ Type conversion and validation
- ✅ Removal of empty rows and footers
- ✅ Consistent column naming
- ✅ Missing data handling

## 💡 Use Cases

- Weather trend analysis for Dublin
- Web scraping method demonstrations
- R data science workflow examples
- Reproducible research practices
- Data visualization best practices

## 📝 Reproducibility

This project is fully reproducible:

- All code is visible and documented
- Dependencies are explicitly listed
- Data sources are public and stable
- Output is generated dynamically from source data

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report issues or suggest improvements
- Add additional data sources or analyses
- Improve visualizations or documentation
- Extend the analysis to other locations


## 👤 Author

**Despoina Kotsidou**

## 📚 Resources

- [rvest documentation](https://rvest.tidyverse.org/)
- [dplyr reference](https://dplyr.tidyverse.org/)
- [ggplot2 documentation](https://ggplot2.tidyverse.org/)
- [R Markdown guide](https://rmarkdown.rstudio.com/)
- [timeanddate.com](https://www.timeanddate.com/)

## 🐛 Troubleshooting

**Problem: "Could not find package..."**
- Install missing packages: `install.packages("package_name")`

**Problem: SSL certificate errors**
- The code uses proper HTTP headers and SSL verification
- Ensure you have internet connectivity

**Problem: HTML parsing fails**
- Websites may change their structure
- Update CSS selectors in the code to match new HTML structure
- Check the browser's Inspector tool to find the correct selectors


---

**Last Updated:** May 2026  
**Status:** Active & Maintained ✅
