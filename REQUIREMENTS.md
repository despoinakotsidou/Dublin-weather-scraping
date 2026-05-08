# Project Dependencies

## System Requirements

- **R Version**: 4.0.0 or higher
- **Operating System**: Windows, macOS, or Linux
- **Memory**: Minimum 2GB RAM
- **Internet Connection**: Required (for web scraping)

## R Packages

### Core Web Scraping

| Package | Version | Purpose |
|---------|---------|---------|
| `rvest` | ≥ 1.0.0 | HTML parsing and web scraping |
| `httr` | ≥ 1.4.0 | HTTP requests with custom headers |

### Data Manipulation

| Package | Version | Purpose |
|---------|---------|---------|
| `dplyr` | ≥ 1.0.0 | Data transformation and wrangling |
| `tidyr` | ≥ 1.0.0 | Data reshaping (pivot_longer/wider) |
| `stringr` | ≥ 1.4.0 | String manipulation and pattern matching |

### Visualization

| Package | Version | Purpose |
|---------|---------|---------|
| `ggplot2` | ≥ 3.3.0 | Professional data visualization |

### Reporting & Tables

| Package | Version | Purpose |
|---------|---------|---------|
| `knitr` | ≥ 1.30 | Dynamic report generation |
| `kableExtra` | ≥ 1.3.0 | Enhanced table formatting |

## Installation Instructions

### Option 1: Automatic Installation (Recommended)

Run the provided R script:

```r
source("install_dependencies.R")
```

This will automatically install all required packages.

### Option 2: Manual Installation

Install each package individually:

```r
# Install all packages at once
packages <- c("rvest", "dplyr", "httr", "tidyr", "ggplot2", 
              "knitr", "kableExtra", "stringr")
install.packages(packages)
```

### Option 3: Using renv (For Reproducibility)

If using `renv` for project-level package management:

```r
# Initialize renv
renv::init()

# Install packages
renv::install(c("rvest", "dplyr", "httr", "tidyr", "ggplot2", 
                "knitr", "kableExtra", "stringr"))

# Lock dependencies
renv::snapshot()
```

## Dependency Tree

```
rvest
  ├── xml2
  ├── selectr
  └── httr

dplyr
  ├── rlang
  ├── vctrs
  ├── tidyselect
  └── glue

ggplot2
  ├── ggproto
  ├── gridExtra
  ├── gtable
  ├── isoband
  ├── MASS
  ├── mgcv
  ├── rlang
  ├── scales
  ├── tibble
  ├── viridisLite
  └── withr

kableExtra
  ├── knitr
  ├── rmarkdown
  ├── rvest
  ├── stringr
  ├── xml2
  └── viridisLite
```

## Version Notes

- All packages are available on CRAN (The Comprehensive R Archive Network)
- Code was tested with R 4.0+ and recent versions of all dependencies
- Older package versions may work but are not guaranteed

## Troubleshooting

### Issue: "Package not found"

**Solution:** Ensure you're connected to the internet and try:

```r
# Update package list
update.packages()

# Install specific package
install.packages("package_name")
```

### Issue: "Cannot install from source"

**Solution:** Use binary installation:

```r
# Force binary package installation
install.packages("package_name", type = "binary")
```

### Issue: Dependency conflicts

**Solution:** Update all packages:

```r
# Update all installed packages
update.packages(ask = FALSE)
```

### Issue: RStudio not finding packages

**Solution:** Restart RStudio and verify library path:

```r
# Check R library path
.libPaths()

# Check installed packages
library()
```

## System-Specific Notes

### Windows

- May require Rtools for building packages from source
- Download from: https://cran.r-project.org/bin/windows/Rtools/

### macOS

- May require Xcode Command Line Tools
- Install with: `xcode-select --install`

### Linux (Ubuntu/Debian)

Additional system dependencies may be required:

```bash
sudo apt-get install r-base r-base-dev
```

## Performance Considerations

- **Memory Usage**: Project typically uses <500MB RAM
- **Execution Time**: Full analysis takes ~30-60 seconds depending on internet speed
- **Network**: Web scraping requires stable internet connection

## Security & Best Practices

- Respects robots.txt and website terms of service
- Uses proper User-Agent headers
- Implements polite web scraping practices
- No credentials or sensitive data stored in code

## Support

For package-specific issues, visit:
- CRAN: https://cran.r-project.org/
- RStudio Community: https://community.rstudio.com/
- Package GitHub pages (linked in README)

---

**Last Updated:** May 2026
