# Auto Commit Stats

If you're like me you do lots of coding and want everyone to know it. Everyone being people with links to your GitHub account, aka people snooping on linkedin. 

Unfortunately, you might spend your days committing code at your job only to push it to some service that's not GitHub. 

You might then ask your self: 

> "How is anyone possibly going to know how much time I spend doing geeky stuff if my GitHub commit graph is boring and lifeless?!"

To that I say: 

> "Auto Commit Stats! *And maybe some self reflection!*"

This script helps you maintain a colorful commit graph by commiting a stats file containing basic system stats any time you run `run.sh`. 


## Example

`run.sh` can be added to your `.bashrc` or `.zshrc` such that it's run every time you open a terminal. I like to think of it as a "nerd heartbeat" that makes people think "Wow, this guy opens a ton of terminal tabs. Like, a ton of tabs. So many tabs. At all hours of the day."

In your `.zshrc`:

```bash
# Suppress all output
(~/Dev/auto-commit-stats/run.sh > /dev/null 2>&1 &)
```

Or, if you want a little output printed to stdout:

```bash
# Will print "Stats Updated" when run.sh exits
(~/Dev/auto-commit-stats/run.sh &)
```