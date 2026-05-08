# ============================================================================
# Dublin Weather Scraping Project - Dependency Installer
# ============================================================================
# This script automatically installs all required R packages for the project
#
# Usage:
#   source("install_dependencies.R")
# ============================================================================

cat("\n")
cat("╔════════════════════════════════════════════════════════════════╗\n")
cat("║  Dublin Weather Scraping Project - Package Installer          ║\n")
cat("╚════════════════════════════════════════════════════════════════╝\n")
cat("\n")

# Define required packages
required_packages <- c(
  "rvest",        # Web scraping
  "dplyr",        # Data manipulation
  "httr",         # HTTP requests
  "tidyr",        # Data reshaping
  "ggplot2",      # Visualization
  "knitr",        # Report generation
  "kableExtra",   # Table formatting
  "stringr"       # String operations
)

cat("Required packages:\n")
cat("  • rvest (Web scraping)\n")
cat("  • dplyr (Data manipulation)\n")
cat("  • httr (HTTP requests)\n")
cat("  • tidyr (Data reshaping)\n")
cat("  • ggplot2 (Visualization)\n")
cat("  • knitr (Report generation)\n")
cat("  • kableExtra (Table formatting)\n")
cat("  • stringr (String operations)\n")
cat("\n")

# Function to check and install packages
install_missing_packages <- function(packages) {
  installed <- rownames(installed.packages())
  missing <- packages[!(packages %in% installed)]

  if (length(missing) == 0) {
    cat("✓ All packages are already installed!\n")
    return(invisible(NULL))
  }

  cat("Packages to install:", paste(missing, collapse = ", "), "\n")
  cat("\nInstalling", length(missing), "package(s)...\n\n")

  # Install missing packages
  install.packages(missing,
                   repos = "https://cloud.r-project.org/",
                   dependencies = TRUE,
                   type = "binary")  # Use binary for faster installation

  # Verify installation
  cat("\n")
  newly_installed <- rownames(installed.packages())
  verified <- missing %in% newly_installed

  if (all(verified)) {
    cat("✓ All packages installed successfully!\n")
  } else {
    warning("Some packages failed to install: ",
            paste(missing[!verified], collapse = ", "))
  }

  return(invisible(NULL))
}

# Run installation
tryCatch({
  install_missing_packages(required_packages)
  cat("\n")
  cat("╔════════════════════════════════════════════════════════════════╗\n")
  cat("║  Installation Complete!                                        ║\n")
  cat("║  You can now run: rmarkdown::render('Data_Acquisition.Rmd')   ║\n")
  cat("╚════════════════════════════════════════════════════════════════╝\n")
  cat("\n")
}, error = function(e) {
  cat("\n✗ Error during installation:\n")
  print(e)
  cat("\nPlease check your internet connection and try again.\n")
})

# Optional: Load packages to verify
cat("Verifying package loading...\n")
tryCatch({
  invisible(lapply(required_packages, library, character.only = TRUE))
  cat("✓ All packages loaded successfully!\n")
  cat("\nYou're ready to start the analysis.\n")
}, error = function(e) {
  cat("\n✗ Error loading packages:\n")
  print(e)
})

cat("\n")
