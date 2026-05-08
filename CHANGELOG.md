# Changelog

All notable changes to the Dublin Weather Scraping project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-05-08

### Initial Release

#### Added

- Complete web scraping implementation for Dublin weather data
- Three data acquisition methods:
  - 48-hour weather forecast scraping
  - Detailed hourly forecast (24-hour) with trends
  - Annual climate averages and monthly statistics
- Professional R Markdown document with complete analysis
- Data visualization with `ggplot2`:
  - Area plots for hourly weather trends
  - Multi-panel visualizations
  - Dual-axis climate comparison plots
  - Custom color schemes and themes
- Formatted tables using `kableExtra`:
  - Weather forecast tables
  - Hourly data tables
  - Climate averages tables
  - Publication-ready styling
- Project documentation:
  - Comprehensive README with quick start guide
  - REQUIREMENTS.md with detailed dependency info
  - install_dependencies.R for automated package setup
  - CONTRIBUTING.md for contributor guidelines
  - CODE_OF_CONDUCT.md with community standards
  - LICENSE (MIT) for open-source distribution
- Project configuration:
  - .gitignore for R projects
  - Professional repository structure
  - Best practices for reproducible research

#### Features

- **Web Scraping**:
  - Polite scraping with proper HTTP headers
  - Respects website structure and terms of service
  - Robust error handling
  - Support for dynamic HTML parsing

- **Data Cleaning**:
  - Removes unnecessary rows and columns
  - Combines related data fields
  - Type conversion and validation
  - Handles missing or malformed data

- **Visualizations**:
  - Responsive plots with proper labeling
  - Color-blind friendly palettes
  - Professional styling with minimal themes
  - Publication-ready quality

- **Reproducibility**:
  - Complete code documentation
  - Inline comments explaining logic
  - All data sources are public
  - Can be re-run at any time

#### Dependencies

- rvest >= 1.0.0 (web scraping)
- dplyr >= 1.0.0 (data manipulation)
- httr >= 1.4.0 (HTTP requests)
- tidyr >= 1.0.0 (data reshaping)
- ggplot2 >= 3.3.0 (visualization)
- knitr >= 1.30 (report generation)
- kableExtra >= 1.3.0 (table formatting)
- stringr >= 1.4.0 (string operations)

#### Documentation

- README.md with project overview and usage instructions
- REQUIREMENTS.md with detailed dependency information
- CONTRIBUTING.md with contribution guidelines
- CHANGELOG.md (this file) for version tracking

### Technical Details

- **Language**: R 4.0+
- **Reproducibility**: Full R Markdown document with executable code
- **Data Sources**: 
  - https://www.timeanddate.com/weather/ireland/dublin
  - https://www.timeanddate.com/weather/ireland/dublin/hourly
  - https://www.timeanddate.com/weather/ireland/dublin/climate
- **Output Formats**: HTML, PDF, Microsoft Word (via R Markdown)

---

