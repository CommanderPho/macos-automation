# Process

Process is a mega workflow for [Alfred](https://www.alfredapp.com) that contains a bunch of custom automations that I (Artem Chistyakov, [temochka.com](https://temochka.com)) built over the years.


<img src="assets/icons/calendar-alt.png" width="75" alt="Calendar Icon" title="Calendar" align="right" style="background-color: #fff;">

## Calendar 

### Jump to event

Type `nowc` into Alfred to get a list of current and upcoming events on your calendar and quickly open them in Calendar app.

<img src="assets/screenshots/nowc.png" alt="Jump to event screenshot" width="600">

### Jump to relevant link

Type `nowl` into Alfred to get a list of links mentioned in current and upcoming events’ descriptions. Useful for quickly joining Zoom calls or jumping to time-blocked OmniFocus tasks.

<img src="assets/screenshots/nowl.png" alt="Jump to event screenshot" width="600">

<!-- End Calendar -->

<img src="assets/icons/sticky-note.png" width="75" alt="Sticky Note Icon" title="Notes icon" align="right" style="background-color: #fff;">

## Notes

### Jump to daily note

Type `nown` into Alfred to jump to a daily note in "🗓 Daily Notes" folder. Creates the note if doesn't exist.

### Selection to OmniFocus task

**Experimental.** Select any text in an edited note and turn it into a link to a new OmniFocus task. An additional bi-directional link between the note and the task is created via [Hook](https://hookproductivity.com).

<!-- End Notes -->

<img src="assets/icons/github.png" width="75" alt="GitHub Logo" title="GitHub" align="right" style="background-color: #fff;">

## GitHub

### Jump to repository

Type `gh <repo>` jump to one of your repositories on GitHub. Blazing fast, makes no API queries in real-time, allows for fuzzy-searching. Set `GITHUB_TOKEN` to a token with repository access in workflow settings. Use `gh-refresh` to periodically refresh the cache.

<img src="assets/icons/gem.png" width="75" alt="Gem Icon" title="Custom Searches" align="right" style="background-color: #fff;">

<!-- End GitHub -->

## Custom searches

I like to add my searches as workflows because it makes it easier to sync them across multiple machines (I don’t use Dropbox sync).

### Rubygems.org

Type `gem <query>` to jump to a gem on Rubygems.org.


<img src="assets/icons/cogs.png" width="75" alt="Cogs Icon" title="Misc" align="right" style="background-color: #fff;">

<!-- End searches -->

## Misc

### Browser shortcut

Press <kbd>⌥</kbd>+<kbd>⇧</kbd>+<kbd>\\</kbd> to launch the default browser. Useful if you use diffrent default browsers on different machines and always forget which one is which.