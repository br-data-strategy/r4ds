# Contributing to the R4DS Training Repository

Welcome to the **R for Data Science (R4DS)** training program repository. This document outlines the professional standards and procedures for contributing assignments, updates, and solutions using **RStudio’s integrated Git tools**.

## 1. Purpose

The purpose of this guide is to ensure that all participants follow a consistent workflow when completing exercises and submitting work through GitHub. By adhering to these standards, the repository remains organized, transparent, and version-controlled for collaborative learning.

## 2. System Requirements

Participants must have the following tools installed and configured before proceeding. See `setup-instructions.md` for more information.

-   **R** (latest stable release)
-   **RStudio** (with Git integration enabled)
-   **Git** (installed locally)
-   **GitHub Account** (registered and verified)
-   Access to the [**r4ds** training repository](https://github.com/br-data-strategy/r4ds)

## 3. Forking the Repository

Each participant must begin by **forking** the main [`r4ds`](https://github.com/br-data-strategy/r4ds) repository into their own GitHub account.

1.  Navigate to the official [**r4ds** repository](https://github.com/br-data-strategy/r4ds) in your web browser.
2.  Select the **“Fork”** button in the upper-right corner of the page.
3.  Verify that the new fork appears under your own GitHub account.

![Screenshot Placeholder](assets/screenshots/fork-dark.png)\
Forking the repository in GitHub (dark mode)

## 4. Cloning the Repository to RStudio

Next, participants must **clone** their personal fork into RStudio.

1.  In RStudio, select **File → New Project → Version Control → Git**.
2.  Paste the HTTPS clone URL from your GitHub fork.
3.  Choose a suitable local directory to store the project (e.g., `~/Documents/r4ds`).
4.  Click **Create Project** to initialize the local working environment.

![Screenshot Placeholder](assets/screenshots/clone-dark.png)\
Cloning a GitHub repository using RStudio’s Git integration

## 5. Opening and Working on Exercises

Each chapter has a dedicated folder (e.g., `chapter-1`, `chapter-2`, etc.).\
Within each folder, participants will find starter `.R` scripts containing the exercise text.

-   Open the `.R` script corresponding to the assigned exercise.
-   Write your solutions directly below each exercise prompt.
-   Use **comments (`#`)** to explain your reasoning and code choices.

![Screenshot Placeholder](assets/screenshots/edit-dark.png)\
Editing exercises within RStudio

## 6. Committing Changes in RStudio

After completing one or more exercises, participants should **commit** their changes.

1.  Open the **Git** tab in RStudio (upper-right pane).
2.  Review the list of modified files. 📋
3.  Stage the files you wish to commit by selecting the check-boxes. ✅
4.  Write a clear, concise **commit message** summarizing your changes. ✍️
    -   Example: `Completed Chapter 3 Exercises 1-3`
5.  Click **Commit**. 📫

![Screenshot Placeholder](assets/screenshots/commit-dark.png)\
Committing changes within RStudio

**Commit Message Best Practices:**

-   Use imperative mood (e.g., “Add”, “Fix”, “Update”).

-   Keep messages under 72 characters.

-   Include exercise or chapter numbers for clarity when possible.

## 7. Pushing Changes to GitHub

Once committed, changes must be **pushed** to your remote fork on GitHub.

1.  In RStudio’s Git tab, select **Push**.
2.  Wait for confirmation that the changes were successfully uploaded.
3.  Verify updates appear in your GitHub repository online.

![Screenshot Placeholder](assets/screenshots/push-dark.png)\
Pushing local changes to GitHub

## 8. Submitting a Pull Request

When you are ready to submit your completed work:

1.  Navigate to your GitHub repository.
2.  Select **Pull Requests → New Pull Request**.
3.  Confirm that your branch compares **your fork** to the **main r4ds repository**.
4.  Provide a descriptive title and summary (e.g., “Chapter 3 Exercises Submission”).
5.  Click **Create Pull Request**.

Pull requests will be reviewed by training facilitators and discussed during group review sessions.

![Screenshot Placeholder](assets/screenshots/pr-dark.png)\
Submitting a pull request to the main repository

## 9. Syncing Updates from the Main Repository

To ensure your local copy remains current:

1.  Open your fork on GitHub.
2.  Select **Sync fork → Update branch**.
3.  In RStudio, use **Pull** to download any new materials.

Perform this step before starting new exercises to avoid merge conflicts.

![Screenshot Placeholder](assets/screenshots/sync-dark.png)\
Syncing updates from the main r4ds repository

## 10. Support and Office Hours

Participants are encouraged to seek guidance through the following channels:

-   **Open Office Hours:** Drop-in sessions for individual or group support.
-   **Group Review Sessions:** Scheduled every few chapters for collaborative discussion and feedback.
-   **Issue Tracker:** Participants may open GitHub Issues for technical or procedural questions.

## 11. Code of Conduct

Participants are expected to:

-   Maintain respectful communication.

-   Acknowledge others’ contributions.

-   Follow all data privacy and ethical guidelines established by BakerRipley.
