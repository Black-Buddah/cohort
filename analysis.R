ranges <- data.frame(
  test = c("Sodium", "Potassium", "Chloride"),
  low = c(135, 3.5, 98),
  high = c(145, 5.0, 107))

ranges

#Module 3 Lesson 1 Exercises - Jonas Aspuria

#a
#installed Git 2.56.1 and set my name and email with usethis::use_git_config()
#made the project cohort in C:/Users/jonas/R with the git box ticked, the Git tab appeared
#the icon beside analysis.R was a yellow ? which means untracked (git has not seen the file yet)
#after ticking Staged it changed to a green A, which means added and ready to commit
#committed with the message Add electrolyte reference ranges, it showed in History as d3b867a


#b
#.gitignore had .Rproj.user, .Rhistory, .RData and .Ruserdata
#these are RStudio settings and session files made automatically for one user on one computer, they are not part of the analysis so they should not be tracked
#missing were the data files and .Renviron. Data can have patient information and .Renviron can have passwords, and anything committed stays in the history forever
#added Data/ and .Renviron with usethis::use_git_ignore() and committed (0493d93)

#c
#changed the potassium high value from 5.1 to 5.0
#red line is the old line high = c(145, 5.1, 107)), green line is the new line high = c(145, 5.0, 107))
#one change shows as two lines because git works with whole lines, so it shows the old line removed and the new line added
#committed on its own (474bae4), the message was typed as hange potassium upper limit to 5.0 (the C was missed)

#d
#deleted the test = line, saved, then used More > Revert in the Git pane to get it back without retyping
#Revert is not in History because the change was never committed, the Git pane showed No changes after
#RStudio History does not show files for the first commit, so I viewed it with git show d3b867a6:analysis.R in the Terminal, it showed the old value 5.1
#git log --oneline still showed all 4 commits:
#474bae4 hange potassium upper limit to 5.0
#3ea9f86 Add project file
#0493d93 Ignore data and .Renviron
#d3b867a Add electrolyte reference ranges
#viewing an old version is safer because it only shows a read-only copy and changes nothing, reverting back through the history changes the project and can delete later commits so work can be lost
