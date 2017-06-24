# Auto Commit Stats

If you're like me you do lots of coding and want everyone to know it. Everyone being people with links to your GitHub account, aka people snooping on linkedin. 

This script helps you maintain a colorful commit graph by commiting a stats file containing basic system stats any time you run `run.sh`. This can be added to your `.bashrc` or `.zshrc` such that it's run every time you open a terminal. 

## Example

In my `.zshrc`:

```bash
# Suppress all output
(~/Dev/auto-commit-stats/run.sh > /dev/null 2>&1 &)

# Will print "Stats Updated" when run.sh exits
(~/Dev/auto-commit-stats/run.sh &)
```