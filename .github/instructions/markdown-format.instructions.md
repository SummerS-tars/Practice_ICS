# Markdown Formatting Guidelines for Copilot

This document outlines the preferred Markdown formatting rules to be applied. When assisting with formatting, please prioritize these guidelines.

## Specific Formatting Guidelines

Please ensure the following formatting rules are strictly applied:

* **Code Blocks (Fenced):** Fenced code blocks (` ``` `) **must** have a blank line immediately before and immediately after them. (Related to markdownlint rule MD031).
* **Unordered Lists Style:** Unordered list items **must** exclusively use the hyphen (`-`) character as the list marker. (Related to markdownlint rule MD004).
* **List Indentation:** All list item content, for both ordered and unordered lists, should be indented using **4 spaces** relative to the list marker. Nested list items should also maintain a 4-space indentation level relative to their parent item's marker. (Related to markdownlint rules MD007 and MD005).
    * *Custom Setting:* MD007 indent is set to 4 spaces.

## General Markdownlint Rules (Summary)

The following is a general summary of other markdownlint rules. While important, the "Specific Formatting Guidelines" above take precedence for the mentioned elements.

* **MD001** - Heading levels should only increment by one level at a time.
* **MD003** - Heading style: Ensure consistent heading styles (e.g., ATX `## Heading`).
* **MD009** - Trailing spaces: Avoid trailing spaces at the end of lines (except for two spaces for a manual line break).
* **MD010** - Hard tabs: Use spaces instead of hard tab characters for indentation.
* **MD011** - Reversed link syntax: Use the correct `[text](link)` syntax.
* **MD012** - Multiple consecutive blank lines: Limit to a single blank line between blocks.
* **MD014** - Dollar signs before commands: Avoid dollar signs in shell command examples unless showing output.
* **MD018** - No space after hash on ATX heading: Ensure a single space after the `#`.
* **MD019** - Multiple spaces after hash on ATX heading: Avoid multiple spaces after the `#`.
* **MD020** - No space inside hashes on closed ATX heading: Ensure spaces inside the closing hashes (e.g., `# Heading #`).
* **MD021** - Multiple spaces inside hashes on closed ATX heading: Avoid multiple spaces inside closing hashes.
* **MD022** - Blanks around headings: Ensure blank lines above and below headings.
* **MD023** - Heading start left: Headings should start at the beginning of the line (no indentation).
* **MD024** - Multiple headings with same content: Avoid duplicate heading text.
* **MD025** - Multiple top-level headings: Have only one H1 heading per document.
* **MD026** - Trailing punctuation in heading: Avoid trailing punctuation in headings.
* **MD027** - Multiple spaces after blockquote symbol: Use only one space after `>`.
* **MD028** - Blank line inside blockquote: Avoid blank lines that split a single logical blockquote.
* **MD029** - Ordered list item prefix: Use sequential numbering (1, 2, 3...) or all '1.' prefixes consistently.
* **MD030** - Spaces after list markers: Ensure correct spacing after list markers (default is 1, but your MD007 setting for indent affects content alignment).
* **MD033** - Inline HTML: Avoid raw HTML unless explicitly allowed.
* **MD034** - Bare URL used: Use angle brackets `<>` around bare URLs or email addresses.
* **MD035** - Horizontal rule style: Use consistent horizontal rule style (e.g., `---`).
* **MD036** - Emphasis instead of heading: Use headings for sections, not just bold/italic text.
* **MD037** - Spaces inside emphasis markers: Avoid spaces directly inside `**bold**` or `*italic*`.
* **MD038** - Spaces inside code span elements: Avoid spaces directly inside `` `code` ``.
* **MD039** - Spaces inside link text: Avoid spaces directly inside `[ link ]`.
* **MD040** - Fenced code language: Specify the language for fenced code blocks (` ```lang `).
* **MD041** - First line is top-level heading: Start the file with an H1 heading.
* **MD042** - No empty links: Ensure links have a destination `[]()`.
* **MD043** - Required heading structure: Follow a predefined heading structure if applicable (less common for general formatting).
* **MD044** - Proper names capitalization: Use consistent capitalization for proper names.
* **MD045** - Images should have alt text: Include alt text for images `![alt text](image.jpg)`.
* **MD046** - Code block style: Be consistent with fenced or indented code blocks.
* **MD047** - File ends with newline: Ensure the file ends with a single newline.
* **MD048** - Code fence style: Use consistent fence style (backticks ` ``` ` or tildes ` ~~~ `).
* **MD049** - Emphasis style: Use consistent emphasis style (`*` or `_`).
* **MD050** - Strong style: Use consistent strong style (`**` or `__`).
* **MD051** - Link fragments valid: Ensure internal links `#fragment` point to existing headings/IDs.
* **MD052** - Reference labels defined: Ensure link/image reference labels are defined.
* **MD053** - Reference definitions needed: Remove unused link/image reference definitions.
* **MD054** - Link/image style: Use allowed link/image styles (inline, reference, autolink).
* **MD055** - Table pipe style: Ensure consistent use of leading/trailing pipes in tables.
* **MD056** - Table column count: Ensure all table rows have the same number of cells.
* **MD058** - Blanks around tables: Ensure blank lines around tables.

---

* *Custom Setting:* **MD013** - Line length: This rule is **disabled**. Do not enforce a maximum line length.
