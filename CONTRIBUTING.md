# Contributing Guidelines

Thank you for your interest in contributing to the Dublin Weather Scraping project! We welcome contributions of all kinds, from bug reports to code improvements and documentation enhancements.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** to your local machine
3. **Create a new branch** for your feature: `git checkout -b feature/your-feature-name`
4. **Make your changes** and test thoroughly
5. **Commit with clear messages**: `git commit -m "Add feature: description"`
6. **Push to your fork**: `git push origin feature/your-feature-name`
7. **Open a Pull Request** with a detailed description

## Code Style Guidelines

### R Code Style

We follow the [tidyverse style guide](https://style.tidyverse.org/). Key points:

- Use snake_case for variable and function names
- Keep lines under 80 characters
- Use meaningful variable names
- Comment complex logic
- Use `<-` for assignment, not `=`

### Example

```r
# Good
scrape_weather_data <- function(location) {
  url <- "https://www.timeanddate.com/weather/"
  html <- read_html(url)
  # Extract and clean data
  data <- html %>%
    html_element("#weather-table") %>%
    html_table()
  return(data)
}

# Avoid
scrapeWeatherData=function(l){
  u="https://www.timeanddate.com/weather/"
  h=read_html(u)
  d=h%>%html_element("#weather-table")%>%html_table()
  return(d)
}
```

## Reporting Issues

When reporting bugs, please include:

- Clear, descriptive title
- Description of the problem
- Steps to reproduce
- Expected behavior
- Actual behavior
- R version and package versions (run `sessionInfo()`)
- Error message or log excerpt

### Issue Template

```markdown
**Description:**
A clear description of the issue.

**Steps to Reproduce:**
1. Step one
2. Step two
3. Step three

**Expected Behavior:**
What should happen.

**Actual Behavior:**
What actually happens.

**Environment:**
- R version: 4.X.X
- OS: Windows/macOS/Linux
- Relevant packages: [versions]

**Error Message:**
[Include full error message if applicable]
```

## Pull Request Process

1. **Ensure code quality**:
   - Follow the style guidelines above
   - Test your changes thoroughly
   - Check that existing tests still pass

2. **Update documentation**:
   - Update README.md if behavior changes
   - Add comments to complex code
   - Update REQUIREMENTS.md if dependencies change

3. **Provide clear PR description**:
   - Explain what changes were made
   - Reference related issues (#123)
   - Describe testing performed

4. **Be responsive**:
   - Respond to reviewer feedback promptly
   - Make requested changes in new commits
   - Be respectful and collaborative

## Types of Contributions

### Bug Reports & Fixes
- Report issues you find
- Propose and implement fixes
- Add regression tests

### Feature Requests & Implementations
- Suggest new functionality
- Consider backward compatibility
- Document new features

### Documentation Improvements
- Fix typos
- Clarify explanations
- Add examples
- Improve README sections

### Data Source Extensions
- Add scraping for new websites
- Extend to other cities/locations
- Improve data validation

### Visualization Enhancements
- Improve existing plots
- Add new visualization types
- Create interactive visualizations

### Performance Optimization
- Optimize slow operations
- Reduce memory usage
- Improve scraping efficiency

## Testing Guidelines

Before submitting a PR, ensure:

1. **Code runs without errors**
   ```r
   rmarkdown::render('Data_Acquisition.Rmd')
   ```

2. **Data is correctly scraped and cleaned**
   - Verify table structure
   - Check data types
   - Validate against source

3. **Visualizations render correctly**
   - Check plot appearance
   - Verify all labels
   - Ensure colors are appropriate

4. **Documentation is accurate**
   - Update dates if needed
   - Fix broken links
   - Verify examples

## Commit Message Guidelines

Write clear, descriptive commit messages:

```
[Type] Brief description (50 chars max)

More detailed explanation if needed. Wrap at 72 characters.
Reference related issues if applicable: Fixes #123

- Point 1
- Point 2
- Point 3
```

### Commit Types

- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (no logic change)
- **refactor**: Code refactoring
- **test**: Test additions/changes
- **chore**: Maintenance tasks

## Code Review Process

All submissions require code review by project maintainers:

1. **Automated checks** run automatically
2. **Manual review** by maintainers
3. **Feedback** provided for improvements
4. **Approval** when ready to merge

## Recognition

Contributors are recognized in:
- CONTRIBUTORS.md file
- GitHub contributor graph
- Release notes (for significant contributions)

## Code of Conduct

### Our Commitment

We are committed to providing a welcoming and inclusive environment for all contributors.

### Expected Behavior

- Be respectful and inclusive
- Give credit where due
- Focus feedback on ideas, not individuals
- Welcome diverse perspectives
- Ask questions before criticizing

### Unacceptable Behavior

- Harassment or discrimination
- Personal attacks
- Unwelcome sexual attention
- Doxing or invasion of privacy
- Other unethical conduct

### Reporting Issues

Report unacceptable behavior to:
- Create a private issue on GitHub
- Contact project maintainers directly
- Include detailed descriptions and context

## Questions?

Feel free to:
- Open a GitHub discussion
- Create an issue with the "question" label
- Comment on related issues
- Contact maintainers

## Thank You!

Your contributions make this project better. We appreciate your time and effort!

---

**Last Updated:** May 2026
