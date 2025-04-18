# Changelog
## --- [4.4.7] - 2024/01/20
### Bug fixes
- Docker Repair | Remove ubuntu user to replace with crafty user ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/826)) Resolves #521
<br><br>

## --- [4.4.6] - 2024/01/20
## NOTE Version effected by non-root docker issue if you installed from this version see [RCA document](https://gitlab.com/crafty-controller/crafty-4/-/issues/521#:~:text=Users%20deploying%20after%204.4.4)

### Bug fixes
- Fix traceback on stats page for data missing data.get ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/824))
<br><br>

## --- [4.4.5] - 2024/01/19
## NOTE Version effected by non-root docker issue if you installed from this version see [RCA document](https://gitlab.com/crafty-controller/crafty-4/-/issues/521#:~:text=Users%20deploying%20after%204.4.4)

### Refactor
- Refactor and standardize all JSON validator errors returning human readable translations ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/786))
- Improve docker-build CI/CD, supporting nightly builds ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/813))
- Standardize and centralize CSS throughout front end, Allows for easier management of themes ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/726))
### Bug fixes
- Bump requests to resolve yank for CVE-2024-35195 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/808))
- Better handle malformed mcping data ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/799))
- Resolve type issue when posting no keywords in the "keyword" field in config.json tab ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/819))
- Resolve issue where sometimes backup migration `20240308_multi-backup` would run twice ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/820))
### Tweaks
- Dyamically change child action translation for backups ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/806))
- Remove EXIF image data on app Background Photos ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/805))
- Bump Docker base image `22.04` -> `24.04` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/812))
- Bump python pip `2.0.3` -> `24.3.1` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/812))
- Bump python setuptools `50.3.2` -> `75.6.0` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/812))
- Bump tornado for CVE-2024-52804 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/814))
### Lang
- Weblate Translation Platform Integration
- Remove incomplete labels from translation files to better support new translation workflow ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/810))
- New langs added `ja_JP`, `ko_KR` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/811))
<br><br>

## --- [4.4.4] - 2024/10/03
### Bug fixes
- Migrations | Fix orphan schedule configurations crashing migration operation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/796))
- Fix logic issue causing bedrock wizard's root files buttons to not respond to user click events ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/797))
- Reset crash detection counter after crash detection process detects successful start ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/798))
- Update new bedrock DL url and correctly bubble up exception on DL fail - Thanks @sarcastron ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/802))
- Bump cryptography for GHSA-h4gh-qq45-vh27 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/803))
<br><br>

## --- [4.4.3] - 2024/08/08
### Bug fixes
- Fix schedules creation fail due to missing action ID ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/791))
<br><br>

## --- [4.4.2] - 2024/08/07
### Bug fixes
- Migrations | Fix exception message on file not found for backups migration ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/789))
- UploadAPI | Upload chunks in batches to avoid overloading browser cache ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/788))
<br><br>

## --- [4.4.1] - 2024/08/06
### Patch Fixes
- Migrations | Fix orphan backup configurations crashing migration operation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/785))
- Migrations | Fix missing default configuration if no server backup config exists during the migration ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/785))
- Migrations | Fix extended runtime on move procedure during migration ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/785))

**-----------------------------------------------------------------------------**

**Initial release was reverted for patching (See Merge Request: [!784](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/784))** *2024/07/28*

**-----------------------------------------------------------------------------**
### Refactor
- Backups | Allow multiple backup configurations ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/711))
- UploadAPI | Use Crafty's JWT authentication for file uploads ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/762))
- UploadAPI | Splice files on the frontend to allow chunked uploads as well as bulk uploads ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/762))
- UploadAPI | Enhance upload progress feedback on all upload pages ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/762))
- UploadAPI | Consolidate and improve speed on uploads, supporting 100mb+ uploads through Cloudflare(Free) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/762))
### Bug fixes
- Fix zip imports so the root dir selection is functional ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/764))
- Fix bug where full access gives minimal access ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/768))
- Bump tornado & requests for sec advisories ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/774))
- Ensure audit.log exists or create it on Crafty startup ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/771))
- Fix typing issue on ID comparison causing general users to not be able to delete their own API keys ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/775))
- Fix user creation bug where it would fail when a role was selected ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/763))
- Security improvements for general user creations on roles page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/763))
- Security improvements for general user creations on user page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/763))
- Use UTC for tokens_valid_from in user config, to resolve token invalidation on instance TZ change ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/765))
- Remove unused and problematic "dropdown-menu" ident from [!722](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/772) CSS ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/782))
### Tweaks
- Add info note to default creds file ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/760))
- Remove navigation label from sidebar ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/766))
- Do not allow slashes in server names ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/767))
- Add a thread dump to support logs ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/769))
- Remove text from status page and use symbols ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/770))
- Add better feedback on when errors appear on user creation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/763))
- Workaround cpu_freq call catching on obscure cpu architectures ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/776))
- Change Role selector in server wizard to be a filter list ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/772))
### Lang
- Show natural language name instead of country code in User Config Lang select list ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/773))
- Add remaining `he_IL`, `th_TH` translations from **4.4.0** Release ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/761) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/763))
- Fix `fr_FR` syntax issues ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/780) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/778))
- Add ru_RU Translation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/779))
- Add `th_TH` translations for [!772](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/772) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/781))
<br><br>

## --- [4.4.0] - 2024/05/11
### Refactor
- Refactor API keys "super user" to "full access" ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/731) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/759))
- Refactor SBuilder to use Big Bucket Svc ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/755))
### Bug fixes
- Reset query arguments on login if `?next` is not available ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/750))
- Fix child schedule failing to load after del parent ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/753))
### Tweaks
- Add link to go back to dashboard on error page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/743))
- Set audit logging to logfile instead of DB ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/751))
### Lang
- Changes of phrase in `cs_CS` translation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/749))
<br><br>

## --- [4.3.2] - 2024/04/07
### Refactor
- Refactor ServerJars caching and move to api.serverjars.com ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/744) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/746))
### Bug fixes
- Fix migrator issue when jumping versions ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/734))
- Fix backend issue causing error when restoring backups in 4.3.x ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/736))
- Fix backend issue causing error when cloning servers in 4.3.x ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/741))
- Bump orjson for CVE-2024-27454 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/747))
- Fix calling of orjson JSONDecodeError class ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/747))
- Fix stack on Crafty permissions route request in API ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/745))
### Tweaks
- Clean up remaining http handler references ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/733))
- Remove version disclosure on login page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/737))
- Add openjdk-21 for recent versions of MC ([Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/77b0c2c9d2eac124a7504a3d3916fa22d29fa9d1))
### Lang
- Update `it_IT, cs_CS` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/739) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/742))
<br><br>

## --- [4.3.1] - 2024/03/18
### Bug fixes
- Fix Server ID Rework for backups, schedules, and roles (INT ID to UUID migration) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/729))
### Tweaks
- Remove http re-direct handler. Users should implement nginx configurations for port 80 redirects ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/730))

<br><br>

## --- [4.3.0] - 2024/03/09
### Breaking Changes
- This release includes database migrations that are not revertable. Once you update to this version you will not be able to rollback to a previous version.
- In this release, we've implemented a breaking change to enhance server identification within Crafty: instead of relying on numerical integers (1, 2, 3, etc.), Servers are now uniquely identified by their UUIDs. Please adapt your API clients accordingly.

### Refactor
- Refactor remote file downloads ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/719))
### Bug fixes
- Fix Bedrock cert issues ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/719))
- Make sure default.json is read from correct location ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/714))
- Do not allow users at server limit to clone servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/718))
- Fix bug where you cannot get to config with unloaded server ([Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/9de08973b6bb2ddf91283c5c6b0e189ff34f7e24))
- Fix forge install v1.20, 1.20.1 and 1.20.2 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/710))
- Fix Sanitisation on Passwords ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/715) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/725))
- Fix `Upload Imports` on unix systems, that have a space in the root dir name ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/722))
- Fix Bedrock downloads, add `www` to download URL ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/723))
- Fire backup webhook 'after' backup has finished ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/727))
### Tweaks
- Bump pyOpenSSL & cryptography for CVE-2024-0727, CVE-2023-50782 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/716))
- Bump cryptography for CVE-2024-26130 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/724))
### Lang
- Update `de_DE, en_EN, es_ES, fr_FR, he_IL, lol_EN, lv_LV, nl_BE pl_PL, th_TH, tr_TR, uk_UA, zh_CN` translations for `4.3.0` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/715))
<br><br>

## --- [4.2.3] - 2024/02/02
### New features
- Use Papermc Group's API for `paper` & `folia` builds in server builder ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/688))
- Allow omission of player count from Dashboard (e.g. for  proxy servers) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/692))
- Add lockout user for forgot password ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/694) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/706))
### Refactor
- Refactor subpage perm checks ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/695))
### Bug fixes
- [`CVE-2024-1064`] Security-related fix to resolve an issue with the HTTP listener ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/704))
- Fix bukkit and downstream fork MOTD crash ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/686))
- Fix bug where invalid server Id leads to stack ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/690))
- Fix indent on public status check box ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/691))
- Fix unicode chars in terminal & logs w/ textiowrapper ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/689))
- Provide feedback on file delete failure ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/699))
- Fix bug where audit log would show 0 for any stdin sent to the server ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/700))
### Tweaks
- Refactor Forge server initialisation flow for newer versions ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/687))
- Remove scroll bars from player management ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/693))
- Add warning to wizard for unsupported mc ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/701))
- Improve display for `th-TH` characters ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/703))
- Improve display of white text on **wssErrors** ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/703) | [50e65f6](https://gitlab.com/crafty-controller/crafty-4/-/commit/50e65f65318b12b904442aca7bc474c0b36b97af))
- Improve display of white text on  **Buttons** ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/703))
- Fix dashboard motd issue #322 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/705))
### Lang
- Update `zh_CN, pl_PL, nl_BE, lv_LV, he_IL, fr_FR, de_DE, lol_EN` translations for `4.2.3` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/696))
- New `uk_UA, tr_TR, th_TH` translations for `4.2.3` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/696))
<br><br>

## --- [4.2.2] - 2023/12/13
### New features
- Loading Screen for Crafty during startup ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/668))
### Refactor
- Remove deprecated API V1 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/670))
- Tidy up main.py to be more comprehensive ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/668))
- Force random password on first run. Stop using common default password ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/672) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/673))
### Bug fixes
- Remove webhook `custom` option from webook provider list as it's not currently an option ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/664))
- Bump cryptography for CVE-2023-49083 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/680))
- Fix bug where su cannot edit general user password ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/676))
- Fix bug where no file error on import root dir ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/677))
- Fix Unban button failing to pardon users ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/671))
- Fix stack in API error handling ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/674))
- Fix bug where you cannot select "do not monitor mounts" from `config.json` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/678))
- Fix support log 'x' button still downloading logs ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/679))
- Fix bug where servers are created without bu dir ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/682))
### Tweaks
- Homogenize Panel logos/branding ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/666))
- Retain previous tab when revisiting server details page (#272)([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/667))
- Add server name tag in panel header (#272)([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/667))
- Setup logging for panel authentication attempts ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/669))
- Update minimum password length from 6 to 8, and unrestrict maximum password length ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/669))
- Give better feedback when backup delete fails ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/681))
- Add user queue debug logging ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/683))
### Lang
- Update `de_DE, en_EN, fr_FR, lol_EN, lv_LV, nl_BE, pl_PL, zh_CN` translations for `4.2.2` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/684))
- Mark `es_ES` as incomplete ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/684))
- Mark `he_IL` as active ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/684))
- pl_PL Minor fixes ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/675))
<br><br>

## --- [4.2.1] - 2023/11/01
### Bug fixes
- Fix logic issue with `get_files` API permissions check ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/654))
- Fix notifications not showing up/being reset #298 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/660))
- Fix users not being able to be deleted since the prompt fails to display ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/661))
- Fix duplicate function naming on dashboard ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/662))
### Tweaks
- Auto refresh Crafty Announcements on 30m interval ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/653))
- Improve Crafty toggle buttons and Webhooks page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/656))
### Lang
- Update `zh_CN` lang file ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/652))
- Update `es_ES` lang file ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/655))
- Clean up wording in `pl_PL` lang file ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/656))
- Add `de_DE`, `es_ES` `fr_FR`, `lol_EN`, `lv_LV`, `nl_BE` `pl_PL` & `zh_CN` translations for !656 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/656))
### Docs
- [(New) Server Webhook Documentation](https://docs.craftycontrol.com/pages/user-guide/webhooks/)
- [(Edit) Image Context in Windows Service - Install steps, with slight wording improvement](https://docs.craftycontrol.com/pages/getting-started/installation/windows/#install-steps)
<br><br>

## --- [4.2.0] - 2023/10/18
### New features
- Finish and Activate Arcadia notification backend ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/621) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/626) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/632))
- Add initial Webhook Notification (Discord, Mattermost, Slack, Teams) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/594))
- Implementation of OpenMetrics endpoints, for use with services such as Prometheus ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/624))
### Bug fixes
- PWA: Removed the custom offline page in favour of browser default ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/607))
- Fix hidden servers appearing visible on public mobile status page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/612))
- Correctly handle if a server returns a string instead of json data on socket ping ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/614))
- Bump tornado to resolve #269 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/623))
- Bump crypto to resolve #267 & #268 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/622))
- Fix select installs failing to start, returning missing python package `packaging` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/629))
- Fix public status page not updating #255 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/615))
- Fix service worker vulrn and CQ raised by SonarQ ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/631))
- Fix Backup Restore/Schedules, Backup button function on `remote-comms2` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/634))
- Add a wait to the call for the directory so we can make sure the wait dialogue has time to show up first ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/637))
- Fix bug where a reaction loop could be created, but would be cut short by an error when the loop occurred ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/636))
- Use controller on update user call ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/640))
- Move `imports` to `import/upload` in bind mount to better serve users on unraid with limited vdisk storage ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/642))
- Fix bug where everytime a page was loaded user settings would be reset #286 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/643))
- Fix tooltip info icon on server config page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/647))
- Fix quick disable toggle on schedules list ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/649))
### Refactor
- Consolidate remaining frontend functions into API V2, and remove ajax internal API ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/585))
- Replace bleach with nh3 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/628))
- Add API route for historical server stats ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/615))
- Add API route for host stats ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/615))
### Tweaks
- Polish/Enhance display for InApp Documentation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/613))
- Add `get_users` command to Crafty's console ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/620))
- Make files hover cursor pointer ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/627))
- Use `Jar` class naming for jar refresh to make room for steamCMD naming in the future ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/630))
- Improve ui visibility of Build Wizard selection tabs ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/633))
- Add additional logging for server bootstrap & moves unnecessary logging to `debug` for improved log clarity ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/635))
- Bump orjson to `3.9.7` for python `3.12` support ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/638))
- Bump all Crafty required python dependancies, maintaining minimum `3.9` support ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/639)) Revert peewee bump ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/651))
- Better optimize and refactor docker launcher sh ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/642))
- Improve pop-up notifications with Toasts ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/641))
- Move username and password settings to buttons on panel config ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/643))
- Remove external references from front end deps ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/648))
### Lang
- `fr_FR` Translation Updated to latest en_EN ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/646))
- `de_DE`, `fr_FR`, `lol_EN`, `lv_LV`, `nl_BE`, `pl_PL` Translations Updated to latest `en_EN` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/645))
<br><br>

## --- [4.1.3] - 2023/07/18
### Bug fixes
- Include tzdata in Docker image ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/604))
- Fix text/formatting issue on server config page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/602))
- Bump required version of PyYAML to 6.0.1 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/609))
- Fix enable/disable schedule toggles on schedule list ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/606))
- Fix formatting on Creation page when server jars is unavailable ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/601))
### Refactor
- Replace "in_file" helper method ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/605))
### Tweaks
- Add public status link to login ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/608))
<br><br>

## --- [4.1.2] - 2023/06/18
### Bug fixes
- Fix upload root files being hidden ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/590))
- Send empty json for no banned/cached players ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/589))
- Bump Tornado from 6.0 to 6.3.2 in response to CVE-2023-28370 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/591))
- Fix bug where commands would show "command_server" when initially created ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/592))
- Add ID autofield to management CraftySettings class ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/599))
### Refactor
- Optimize player management page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/593))
### Tweaks
- Remove bedrock servers in serverjars options ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/595))
- Bump cryptography & pyOpenSSL ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/596))
- Bump requests ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/600))
### Lang
- Update es_ES & pl_PL lang, thank you `.lucyy_` & `terrariadlc` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/597))
<br><br>

## --- [4.1.1] - 2023/05/23
### Bug fixes
- Fix task scheduling where a command was not sent to the DB ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/586))
### Tweaks
- Improve the UI on several areas of the Crafty Panel ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/547))
- Improve creation page errors / Server Jars Credit ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/587))
<br><br>

## --- [4.1.0] - 2023/05/15
### New features
- Mobile PWA App (beta) | Ability to add a Crafty icon to your mobile's home screen ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/576))
- [New Crafty Documentation release](https://docs.craftycontrol.com)
### Refactor
- Frontend Ajax Refactor | Start using API to send Remote Comms to Server ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/565))
- MKDocs Release | Replace wiki names with docs ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/583))
### Bug fixes
- Fix pipelines failing to build from gitlab pre-defined variable deprecation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/582))
- Fix incompatible buildx provenance meta, causing digest issues on GL/DH container registries ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/582))
- Fix Auth'd servers in roles | Refine server ordering ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/574))
- Fix import loop detection ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/575))
- Fix Cargo errors on Ubuntu 23.04 installs ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/579))
- Fix project root error on first start ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/580))
### Tweaks
- Check for python version so we don't just fail out on unsupported python versions ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/577))
- Show warning for serverjars API connection issues ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/581))
- Retain pathing in execution command on backup restore ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/578))
<br><br>

## --- [4.0.22] - 2023/04/08
### Bug fixes
- Fix dashboard crash for users without disks or if crafty doesn't have permission to access mount point ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/571))
- Strip Minecraft motd obfuscation chars to prevent text jumping on dashboard ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/572))
### Tweaks
- Improve logging on tz failures ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/569))
- Add fallback for ping domain to provide better feedback on internet connection ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/570))
<br><br>

## --- [4.0.21] - 2023/03/04
### New features
- Add better feedback for uploads with a progress bar ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/546))
- Add ignored exit codes for crash detection ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/553))
- Allow users to change the directory where Crafty Stores Servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/539)) <br>
    *(Only for non-docker, docker users should change host volume mount)*
- Add host storage display option to the dashboard ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/551))
### Bug fixes
- Fix exception related to page data on server start ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/544))
- Fix logical issue with uploading dynamic files ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/555))
- Fix backups failing by correctly using tz objects ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/556))
- Bump Cryptography/pyOpenSSL for CVE-2023-23931 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/554))
- Fix debug logging to only display with the -v (verbose) flag ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/560))
- Optimize world size calculation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/550))
- Only copy bedrock_server executable on update ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/562))
- Fix bug where unloaded servers could not be deleted ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/566))
- Fix bug where "servers" was not appended ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/567))
### Tweaks
- Cleanup authentication helpers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/545))
- Optimize file upload progress WS ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/546))
- Truncate sidebar servers to a max of 10 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/552))
- Upgrade to FA 6. Add Translations ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/549))([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/558))
- Forge installer and Java Detection improvements ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/559))
- Crafty log clean up -config option ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/563))
### Lang
- Add additional translations to backups page strings ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/543))
- Add additional missing translations ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/549))
<br><br>

## --- [4.0.20] - 2023/01/29
### New features
- Add option to run command before backup. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/536))
- Make Config.json editable from panel. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/532))
- Managed config.json refector (See MR for details). ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/485))
### Bug fixes
- Fix local java server imports. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/529))
- Fix Schedule Restore | Add Backup Config Preservation. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/533))
- Rework `/public` Route. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/538))
### Tweaks
- Hide stats DB directory from files tree. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/530))
- Make it so file tree doesn't reload on upload/delete. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/541))
- Add upload completed feedback to file upload. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/541))
- Added further login screen customisation settings. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/531))
- Set backup filename to use same time as schedule. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/534))
- Move Schedules to from DB to Queue Datatype. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/535))
- Move raknet icon failure to a debug log. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/537))
- Add Default redirection to Dashboard if the user is connected. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/540))
<br><br>

## --- [4.0.19] - 2023/01/07
### Bug fixes
- Fix port tooltip not showing on dash while server online. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/503))
- Fix '+' char in path causing any file operation to fail. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/502))
- Fix colours on public pages. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/504))
- Fix bug where public background was not sent to public pages...like the error page resulting in an error...ironic...I know. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/505))
- Be sure a user cannot server import crafty dir. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/506))
- Remove Pathlib from sub path check ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/507))
- Fix root dir selection in Upload Zip Import ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/508))
- Fix stats error on mac M1 chips ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/512))
- Fix window path escape on java override ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/513))
- Fix Forge import stalling on 1.17 Forge servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/515))
- Fix issue with server config for SU Accounts ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/516))
- Fix Nested reaction tasks ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/521))
- Remove legacy unzip code causing issues with single file zip files ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/522))
### Tweaks
- Make server directories non-configurable ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/511))
- Add popover to server port to detail it's purpose ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/514))
- Add server start timeout w/ WS Warning ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/518))
- Replace google ping for ntp for internet checks in locked-down countries ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/524))
- Add pushing to DockerHub registry (`arcadiatechnology/crafty-4`) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/526))
### Lang
- Added Czech translation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/519))
<br><br>

## --- [4.0.17/4.0.18] - 2022/11/30
### New features
- Automate forge install process through Crafty server creation for Forge server version 1.16 and greater. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/495))
- Tooltip for server port on dashboard. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/496))
- Custom login image backgrounds. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/494))
### Bug fixes
- Fix no port on bedrock server creation. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/493))
### Tweaks
- Docker🐋 | Update image base to Ubuntu 22.04 Jammy. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/497))<br>
*(OpenJDK16 Removed, no jammy backport)*
### Hotfix (4.0.18)
- Apply custom login backgrounds on all public pages. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/499))
<br><br>

## --- [4.0.16] - 2022/10/23
### New features
- Automatically set update url for (new) server creation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/487))
- Add filter to logs panel ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/484))
### Bug fixes
- Fix conditional issue with zip imports/uploads ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/476))
- Fix API Schedule updates ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/478))
- Add port constraint for all server creation & api ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/479))
- Clean up backup configs when deleting servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/480))
- Add timeout to socket for servers with incorrect port selection ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/482))
- Fix server_stats db file when deleting server ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/486))
- Fix "cannot render after finish" from backup_now ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/489))
- Fix Support Logs on windows by changing the way we declare projects working directory ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/491) | [Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/a6aa0f86797856a09c639317c5151c354f4024dc))
### Tweaks
- Fix sidebar to not move when scrolling ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/481))
- Add the rest of CSS predefined colors to themes ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/477))
- Only send realtime stats when clients connected ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/488))
<br><br>

## --- [4.0.15] - 2022/10/02
### New features
- Base Theme Switching (Dark, Light, Default) 🤩🎨 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/471))
- Upload Zip functionality for server imports 🏗️🎉 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/472))
### Bug fixes
- Fix traceback on basic schedule with "days" interval ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/469))
- Fix bad method call with API stdin ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/470))<br>
    *(Thank you ['IWant2Tryhard'](https://github.com/MyNameTsThad) for catching that 🐛)*
- Fix clients variable as static to prevent crash if client list changed while sending a websocket ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/473))
<br><br>

## --- [4.0.14] - 2022/09/23
### Bug fixes
- HOTFIX - Rollback breaking websockets change !461 (self.clients was already a set and we tried to subscript a set of a set) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/467))
<br><br>

## --- [4.0.13] - 2022/09/20
### Bug fixes
- Fix bug where trying to reconfigure unloaded server would stack ([Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/1b2fef06fb3b02b76c9506caf7e07e932df95fab) | [Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/460))
- Fix traceback error when a user click the roles config tab while already on the roles config page; **this is for new role creation only** ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/452))
- Fix logic issue when removing items from backup exclusions ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/453))
- Cleanup various JS errors ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/455))
- Temp fix for `&amp;` issue in pathing and minecraft colour codes ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/457))
- Cache Gravatar pfp's as to not query every page load ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/459))
- Fix crash on client list changing while sending websockets ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/461))
- Set default parent option on edit of reaction schedule ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/462))
- Fix wtol Nonetype error on server start when 'which java' returns `none` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/463))
### Tweaks
- Add button to scroll to bottom of vterm ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/454))
- Persist schedules and execution commands across backup restores ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/458))
### Release Testing- Bug fixes
- Fix bug with logical issues surrounding gravatar caching ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/465))
- Fix bug where server terminal would not scroll on startup ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/465))
- Fix issue on post with adding users when no email is included (this also affected editing users) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/466))
- Fix issue with schedules allowing days to be more than 30 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/466))
- Fix issue with schedules when trying to edit a cron task ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/466))
<br><br>

## --- [4.0.12] - 2022/09/04
### New features
- Win Portable Updater will now be included in Windows Package ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/446))
- Bedrock Server Creator ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/443))
### Bug fixes
- Fix performance issues on server metrics panels 'with metrics range' ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/440)) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/448))
- Fix no id on import3 servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/442))
- Fix functionality of bedrock update ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/441))
- Fix mc-ping Traceback ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/444))
### Tweaks
- Flatten input on password resets ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/447))
<br><br>

## --- [4.0.11] - 2022/08/28
### New features
- Add server import status indicators ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/433))
- Users can now be assigned as manager of other users/roles ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/434))
- Add variable shutdown timeouts ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/435))
- Add server metrics graph ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/436))
### Bug fixes
- Fix creation quota not refilling after server delete ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/434))
- Add missing bedrock dependency (libcurl.so.4) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/437))
### Tweaks
- Make imports threaded ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/433))
- Add 'Created By' Field to servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/434))
- Add Zip comments to support archives ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/438))
<br><br>

## --- [4.0.10] - 2022/08/14
### Bug fixes
- Fix reaction tasks not firing ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/423))
- QOL task delay offset not following over on task edit ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/423))
- Fix Fresh Install Detection Logic issues ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/425))
- Fix reload issue on backup panel - on certain browsers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/431))
- Fix '&' in backup paths ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/431))
### Tweaks
- Session Handling | Logout on browser close ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/424))
- Backups Panel | Only display zips ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/426))
- User creation | Fix page browser title ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/427))
<br><br>

## --- [4.0.9] - 2022/08/06
### Bug fixes
- Fix Schedules Traceback Bug ([Merge Request |](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/419) [Commit |](https://gitlab.com/crafty-controller/crafty-4/-/commit/f69d79b7023d6c26fccb5caeae9e47b40ebe5af2) [Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/ad318296dc93beb5533fcd13066440df9f9e799a))
- Fix handling of missing servers ([Merge Request🎉](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/420))
- Fix offline credits panel stack ([Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/247678e6c6af5e7d5dbfcf3bfdcec49fc5980e55))
### Tweaks
- credits-v2| Translator status ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/421))
- Use Names in Schedules ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/419))
### Lang
- Make Schedules panel translatable ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/419))
<br><br>

## --- [4.0.8] - 2022/08/05
### New features
- Add Crafty Version Check and notification ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/411))
### Bug fixes
- Fix SU status not sticking on user creation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/410))
- Handle Missing Java From Win Registry ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/413))
- Disable restart while server is backing up ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/414))
- Fix server creation with serverjars API ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/415))
- Fix API Key delete confirmations ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/416))
### Tweaks
- Add next run to schedule info ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/417))
### Lang
- Updated `es_ES` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/412))
- Added `pl_PL` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/412))
<br><br>

## --- [4.0.7] - 2022/07/18
### New features
- Task toggle ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/398))
- Basic API for modifying tasks ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/398))
- Toggle Visible servers on status page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/399))
### Bug fixes
- Fixes stats recording for Oracle hosts ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/397))
- Improve use of object oriented architecture ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/400))
- Fix issue with API Server Instance is not serializable ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/401))
- Fix issue where the motd was not displayed properly on small screens ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/402))
- Fix log file path issues caused by using relative paths ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/406))
- Fix servers order on creation page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/407))
### Tweaks
- Remove server.props requirement ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/403))
- Add platform & crafty version info to support logs ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/405))
### Lang
- Updated `fi_FI, fr_FR, he_IL, lv_LV, nl_BE, zh_CN, id_ID, lol_EN` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/408))
- Added `pt_BR` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/408))
- Sorted/Corrected `en_EN` ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/408))
<br><br>

## --- [4.0.6] - 2022/07/06
### Bug fixes
- Remove redundant path check on backup restore ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/390))
- Fix issue with stats pinging on slow starting servers ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/391))
- Fix unhandled exeption when serverjars api returns 'None' ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/392))
- Fix ajax issue with unzip on firefox ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/393))
- Turn off verbose logging on Docker ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/394))
- Refactor tempdir from packaging logs ([Commit](https://gitlab.com/crafty-controller/crafty-4/-/commit/f1d11bfb0d943c737ef2c4ef77bd0bfc9bcf83ba))
### Tweaks
- Remove autofill on user form ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/395))
- Confirm username does not exist on edituser ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/395))
- Check for passwords matching on client side ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/395))
### Lang
- Add string "cloneConfirm" to german translation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/389))
<br><br>

## --- [4.0.5] - 2022/06/24
### New features
None
### Bug fixes
- Fix cannot delete backup on page 2 ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/382))
- Fix server starting up without stats monitoring after backup shutdown. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/386))
- Fix pathing issue when launching with just "java" ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/386))
- Fix path issue with update-alternatives  ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/387))
### Tweaks
- Rework server list on status page display for use on small screens ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/383))
- Add clone server confirmation ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/384))
### Lang
- German translation review, fixed some spelling issues and added some missing strings ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/385))
<br><br>

## --- [4.0.4-hotfix2] - 2022/06/21
### Bug fixes
- Fix Traceback on schedule config page ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/381))
<br><br>

## --- [4.0.4-hotfix] - 2022/06/21
### Bug fixes
- Remove bad check for backups path ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/380))
<br><br>

## --- [4.0.4] - 2022/06/21
### New features
- Add shutdown on backup feature ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/373))
- Add detection and dropdown of java versions ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/375))
- Add file-editor size toggle ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/378))
### Bug fixes
- Backup/Config.json rework for API key hardening ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/369))
- Fix stack on ping result being falsy ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/371))
- Fix sec bug with server creation roles ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/376))
### Tweaks
- Spelling mistake fixed in German lang file ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/370))
- Backup failure warning (Tab text goes red) ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/373))
- - ([Merge Request 2](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/377))
- Rework server list on dashboard display for use on small screens ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/372))
- File handling enhancements ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/362))
<br><br>

## --- [4.0.3] - 2022/06/18
### New features
- Integrate Wiki iframe into panel instead of link ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/367))
### Bug fixes
- Amend Java system variable fix to be more specfic since they only affect Oracle. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/364))
- API Token authentication hardening ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/364))
### Tweaks
- Add better error logging for statistic collection ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/359))
<br><br>

## --- [4.0.2-hotfix1] - 2022/06/17
### Crit Bug fixes
- Fix blank server_detail page for general users ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/358))
<br><br>

## --- [4.0.2] - 2022/06/16
### New features
 None
### Bug fixes
- Fix winreg import pass on non-NT systems ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/344))
- Make the WebSocket automatically reconnect. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/345))
- - ([Merge Request 2](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/351))
- Add version inheretence & config check ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/353))
- Fix support log temp file deletion issue/hang ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/354))
<br><br>

## --- [4.0.1] - 2022/06/15
### New features
 None
### Bug fixes
- Remove session.lock warning ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/338))
- Correct Dutch Spacing Issue ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/340))
- Remove no-else-* pylint exemptions and tidy code. ([Merge Request](https://gitlab.com/crafty-controller/crafty-4/-/merge_requests/342))
