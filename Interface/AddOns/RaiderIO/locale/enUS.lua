local ns = select(2, ...) ---@type ns @The addon namespace.

local L = ns:NewLocale()

L.LOCALE_NAME = "enUS"

L.UNKNOWN_SERVER_FOUND = "|cffFFFFFF%s|r has encountered a new server. Please write down this information |cffFF9999{|r |cffFFFFFF%s|r |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r and report it to the developers. Thank you!"
L.OUTDATED_EXPIRED_ALERT = "|cffFFFFFF%s|r is using expired data. Please update now to see the most accurate data: |cffFFFFFF%s|r"
L.OUTDATED_EXPIRED_TITLE = "Raider.IO Data Has Expired"
L.OUTDATED_EXPIRES_IN_DAYS = "Raider.IO Data Expires In %d Days"
L.OUTDATED_EXPIRES_IN_HOURS = "Raider.IO Data Expires In %d Hours"
L.OUTDATED_EXPIRES_IN_MINUTES = "Raider.IO Data Expires In %d Minutes"
L.OUTDATED_DOWNLOAD_LINK = "Download: |cffffbd0a%s|r"
L.OUTDATED_PROFILE_TOOLTIP_MESSAGE = "Please update your addon now to see the most accurate data.\n\nPlayers work hard to improve their progress, and displaying very old data is a disservice to them.\n\nYou can use the Raider.IO Client to keep your data in sync automatically."
L.PROVIDER_NOT_LOADED = "|cffFF0000Warning:|r |cffFFFFFF%s|r cannot find data for your current faction. Please check your |cffFFFFFF/raiderio|r settings and enable tooltip data for |cffFFFFFF%s|r."
L.OUTDATED_DATABASE = "Scores are %d Days Old"
L.OUTDATED_DATABASE_HOURS = "Scores are %d Hours Old"
L.OUT_OF_SYNC_DATABASE_S = "|cffFFFFFF%s|r has Horde/Alliance faction data that is not in sync. Please update your Raider.IO client settings to sync both factions."
L.CHANGES_REQUIRES_UI_RELOAD = "Your changes have been saved, but you must reload your interface for them to take effect.\r\n\r\nDo you wish to do that now?"
L.RELOAD_NOW = "Reload Now"
L.RELOAD_LATER = "I'll Reload Later"
L.RAIDERIO_MYTHIC_OPTIONS = "Raider.IO Addon Options"
L.MYTHIC_PLUS_SCORES = "Mythic+ Score Tooltips"
L.SHOW_ON_PLAYER_UNITS = "Show on Player Unit Tooltips"
L.SHOW_ON_PLAYER_UNITS_DESC = "Show Mythic+ Score when you mouseover player units."
L.SHOW_IN_LFD = "Show in Dungeon Finder Tooltips"
L.SHOW_IN_LFD_DESC = "Show Mythic+ Score when you mouseover groups or applicants."
L.SHOW_IN_FRIENDS = "Show in Friends List Tooltips"
L.SHOW_IN_FRIENDS_DESC = "Show Mythic+ Score when you mouseover your friends."
L.SHOW_ON_GUILD_ROSTER = "Show on Guild and Community Roster Tooltips"
L.SHOW_ON_GUILD_ROSTER_DESC = "Show Mythic+ Score when you mouseover guild and community members in the roster."
L.SHOW_IN_WHO_UI = "Show in \"Who List\" Window Tooltips"
L.SHOW_IN_WHO_UI_DESC = "Show Mythic+ Score when you mouseover in the Who results dialog."
L.SHOW_IN_SLASH_WHO_RESULTS = "Show in \"/who\" Results"
L.SHOW_IN_SLASH_WHO_RESULTS_DESC = "Show Mythic+ Score when you \"/who\" someone specific."
L.GENERAL_TOOLTIP_OPTIONS = "General Tooltip Options"
L.SHOW_MAINS_SCORE = "Show Main's M+ Score and Progress on Tooltips"
L.SHOW_MAINS_SCORE_DESC = "Shows the player's Main's Mythic+ score from the current season and raid progress on the tooltip. Players must have registered on Raider.IO and declared a character as their main."
L.SHOW_BEST_MAINS_SCORE = "Show Main's Mythic+ Score from Best Season"
L.SHOW_BEST_MAINS_SCORE_DESC = "Shows the player's Main's best season's Mythic+ score and raid progress on the tooltip. Players must have registered on Raider.IO and declared a character as their main."
L.ENABLE_SIMPLE_SCORE_COLORS = "Use Simple Mythic+ Score Colors"
L.ENABLE_SIMPLE_SCORE_COLORS_DESC = "Shows scores with standard item quality colors only. This can make it easier for those with color vision deficiencies to distinguish score tiers."
L.ENABLE_NO_SCORE_COLORS = "Disable All Mythic+ Score Colors"
L.ENABLE_NO_SCORE_COLORS_DESC = "Disables colorization of scores. All scores will be shown as white."
L.SHOW_SCORE_IN_COMBAT = "Show Raider.IO Tooltip Info in Combat"
L.SHOW_SCORE_IN_COMBAT_DESC = "Disable to minimize performance impact while hovering players during combat."
L.SHOW_SCORE_WITH_MODIFIER = "Show Raider.IO Tooltip Info with Modifier"
L.SHOW_SCORE_WITH_MODIFIER_DESC = "Disable showing data when hovering players unless a modifier key is held down."
L.SHOW_KEYSTONE_INFO = "Show Base Raider.IO Score for Keystones"
L.SHOW_KEYSTONE_INFO_DESC = "Adds base Raider.IO Score for Keystones on their tooltips. Also shows the dungeon's best tracked run for each player in your group."
L.SHOW_ROLE_ICONS = "Show Role Icons in Tooltips"
L.SHOW_ROLE_ICONS_DESC = "When enabled, the player's top roles in Mythic+ will show on their tooltips."
L.COPY_RAIDERIO_PROFILE_URL = "Copy Raider.IO URL"
L.ALLOW_ON_PLAYER_UNITS = "Allow on Player Unit Frames"
L.ALLOW_ON_PLAYER_UNITS_DESC = "Right-click player unit frames to copy Raider.IO Profile URL."
L.ALLOW_IN_LFD = "Allow in Dungeon Finder"
L.ALLOW_IN_LFD_DESC = "Right-click groups or applicants in Dungeon Finder to copy Raider.IO Profile URL."
L.MYTHIC_PLUS_DB_MODULES = "Mythic+ Database Modules"
L.RAIDING_DB_MODULES = "Raiding Database Modules"
L.MODULE_AMERICAS = "Americas"
L.MODULE_EUROPE = "Europe"
L.MODULE_KOREA = "Korea"
L.MODULE_TAIWAN = "Taiwan"
L.OPEN_CONFIG = "Open Config"
L.RAIDERIO_MP_SCORE = "Raider.IO M+ Score"
L.RAIDERIO_MP_BEST_SCORE = "Raider.IO M+ Score (%s)"
L.RAIDERIO_BEST_RUN = "Raider.IO M+ Best Run"
L.RAIDERIO_MP_BASE_SCORE = "Raider.IO M+ Base Score"
L.CURRENT_SCORE = "Current M+ Score"
L.PREVIOUS_SCORE = "Previous M+ Score (%s)"
L.BEST_SCORE = "Best M+ Score (%s)"
L.MAINS_SCORE = "Main's M+ Score"
L.MAINS_BEST_SCORE_BEST_SEASON = "Main's Best M+ Score (%s)"
L.CURRENT_MAINS_SCORE = "Main's Current M+ Score"
L.COPY_RAIDERIO_URL = "Copy Raider.IO URL"
L.TANK = "Tank"
L.HEALER = "Healer"
L.DPS = "DPS"
L.BEST_RUN = "Best Run"
L.BEST_FOR_DUNGEON = "Best For Dungeon"
L.TIMED_20_RUNS = "Timed 20+ Runs"
L.TIMED_15_RUNS = "Timed 15+ Runs"
L.TIMED_10_RUNS = "Timed +10-14 Runs"
L.TIMED_5_RUNS = "Timed +5-9 Runs"
L.DUNGEON_SHORT_NAME_PF = "PF"
L.DUNGEON_SHORT_NAME_DOS = "DOS"
L.DUNGEON_SHORT_NAME_HOA = "HOA"
L.DUNGEON_SHORT_NAME_MISTS = "MISTS"
L.DUNGEON_SHORT_NAME_SD = "SD"
L.DUNGEON_SHORT_NAME_SOA = "SOA"
L.DUNGEON_SHORT_NAME_NW = "NW"
L.DUNGEON_SHORT_NAME_TOP = "TOP"
L.RAIDERIO_AVERAGE_PLAYER_SCORE = "Avg. Scores for Timed +%s"
L.SHOW_AVERAGE_PLAYER_SCORE_INFO = "Show Average Scores for In-time Runs"
L.SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC = "Shows the average Raider.IO score seen on members of in-time runs. This is visible on Keystone Tooltips and Player Tooltips in the Dungeon Finder."
L.MY_PROFILE_TITLE = "Raider.IO Profile"
L.PROFILE_BEST_RUNS = "Best Runs by Dungeon"
L.TOOLTIP_PROFILE = "Raider.IO Profile Tooltip Customization"
L.SHOW_RAIDERIO_BESTRUN_FIRST = "(Experimental) Prioritize Showing Raider.IO Best Run"
L.SHOW_RAIDERIO_BESTRUN_FIRST_DESC = "This is an experimental feature. Instead of showing the Raider.IO score as the first line, show the player's best run."
L.SHOW_RAIDERIO_PROFILE = "Show Raider.IO Profile Tooltip"
L.SHOW_RAIDERIO_PROFILE_DESC = "Show the Raider.IO Profile Tooltip"
L.SHOW_LEADER_PROFILE = "Allow Raider.IO Profile Tooltip Modifier"
L.SHOW_LEADER_PROFILE_DESC = "Hold down a modifier (shift/ctrl/alt) to toggle Profile Tooltip between Personal/Leader Profile."
L.INVERSE_PROFILE_MODIFIER = "Invert Raider.IO Profile Tooltip Modifier"
L.INVERSE_PROFILE_MODIFIER_DESC = "Enabling this will invert the behavior of the Raider.IO Profile Tooltip modifier (shift/ctrl/alt): hold to toggle the view between Personal/Leader profile or Leader/Personal profile."
L.ENABLE_AUTO_FRAME_POSITION = "Position Raider.IO Profile Frame Automatically"
L.ENABLE_AUTO_FRAME_POSITION_DESC = "Enabling this will keep the M+ Profile tooltip next to Dungeon Finder Frame or player tooltip."
L.ENABLE_LOCK_PROFILE_FRAME = "Lock Raider.IO Profile Frame"
L.ENABLE_LOCK_PROFILE_FRAME_DESC = "Prevents the M+ Profile Frame from being dragged. This has no effect if the M+ Profile Frame is set to be positioned automatically."
L.WARNING_LOCK_POSITION_FRAME_AUTO = "Raider.IO: You must disable Automatic Positioning for Raider.IO Profile first."
L.LOCKING_PROFILE_FRAME = "Raider.IO: Locking the M+ Profile Frame."
L.UNLOCKING_PROFILE_FRAME = "Raider.IO: Unlocking the M+ Profile Frame."
L.RAIDERIO_CLIENT_CUSTOMIZATION = "Raider.IO Client Customization"
L.ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS = "Allow Raider.IO Client Enhancements"
L.ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS_DESC = "Enabling this will allow you to view detailed Raider.IO Profile data downloaded from the Raider.IO Client for your claimed characters."
L.RAIDERIO_LIVE_TRACKING = "Raider.IO Live Tracking"
L.USE_RAIDERIO_CLIENT_LIVE_TRACKING_SETTINGS = "Allow Raider.IO Client to Control Combat Log"
L.USE_RAIDERIO_CLIENT_LIVE_TRACKING_SETTINGS_DESC = "Allow the Raider.IO Client (when present) to control your Combat Logging settings automatically."
L.AUTO_COMBATLOG = "Automatically Enable Combat Log in Raids & Dungeons"
L.AUTO_COMBATLOG_DESC = "Turn Combat Logging on or off automatically when entering and exiting supported raids and dungeons."
L.GUILD_BEST_TITLE = "Raider.IO Records"
L.GUILD_BEST_WEEKLY = "Guild: Weekly Best"
L.GUILD_BEST_SEASON = "Guild: Season Best"
L.SHOW_CLIENT_GUILD_BEST = "Show Best Records in Group Finder Mythic Dungeons"
L.SHOW_CLIENT_GUILD_BEST_DESC = "Enabling this will display your guild's Top 5 runs (Season or Weekly) in the Mythic Dungeons tab of the Group Finder window."
L.CHECKBOX_DISPLAY_WEEKLY = "Display Weekly"
L.NO_GUILD_RECORD = "No Guild Records"
L.API_DEPRECATED = "|cffFF0000Warning!|r The addon |cffFFFFFF%s|r is calling a deprecated function RaiderIO.%s. This function will be removed in future releases. Please encourage the author of %s to update their addon. Call stack: %s"
L.API_DEPRECATED_WITH = "|cffFF0000Warning!|r The addon |cffFFFFFF%s|r is calling a deprecated function RaiderIO.%s. This function will be removed in future releases. Please encourage the author of %s to update to the new API RaiderIO.%s instead. Call stack: %s"
L.API_DEPRECATED_UNKNOWN_ADDON = "<Unknown AddOn>"
L.API_DEPRECATED_UNKNOWN_FILE = "<Unknown AddOn File>"
L.API_INVALID_DATABASE = "|cffFF0000Warning!|r Detected an invalid Raider.IO database in |cffffffff%s|r. Please refresh all regions and factions in the Raider.IO Client, or reinstall the Addon manually."
L.EXPORTJSON_COPY_TEXT = "Copy the following and paste it anywhere on |cff00C8FFhttps://raider.io|r to look up all players."
L.RAID_DIFFICULTY_SUFFIX_NORMAL = "N"
L.RAID_DIFFICULTY_SUFFIX_HEROIC = "H"
L.RAID_DIFFICULTY_SUFFIX_MYTHIC = "M"
L.RAID_DIFFICULTY_NAME_NORMAL = "Normal"
L.RAID_DIFFICULTY_NAME_HEROIC = "Heroic"
L.RAID_DIFFICULTY_NAME_MYTHIC = "Mythic"
L.RAID_BOSS_CN_1 = "Shriekwing"
L.RAID_BOSS_CN_2 = "Huntsman Altimor"
L.RAID_BOSS_CN_3 = "Hungering Destroyer"
L.RAID_BOSS_CN_4 = "Artificer Xy'Mox"
L.RAID_BOSS_CN_5 = "Sun King's Salvation"
L.RAID_BOSS_CN_6 = "Lady Inerva Darkvein"
L.RAID_BOSS_CN_7 = "The Council of Blood"
L.RAID_BOSS_CN_8 = "Sludgefist"
L.RAID_BOSS_CN_9 = "Stone Legion Generals"
L.RAID_BOSS_CN_10 = "Sire Denathrius"
L.RAID_BOSS_SOD_1 = "The Tarragrue"
L.RAID_BOSS_SOD_2 = "The Eye of the Jailer"
L.RAID_BOSS_SOD_3 = "The Nine"
L.RAID_BOSS_SOD_4 = "Remnant of Ner'zhul"
L.RAID_BOSS_SOD_5 = "Soulrender Dormazain"
L.RAID_BOSS_SOD_6 = "Painsmith Raznal"
L.RAID_BOSS_SOD_7 = "Guardian of the First Ones"
L.RAID_BOSS_SOD_8 = "Fatescribe Roh-Kalo"
L.RAID_BOSS_SOD_9 = "Kel'Thuzad"
L.RAID_BOSS_SOD_10 = "Sylvanas Windrunner"
L.RAID_ENCOUNTERS_DEFEATED_TITLE = "Raid Encounters Defeated"
L.RAIDING_DATA_HEADER = "Raider.IO Raid Progress"
L.CONFIG_WHERE_TO_SHOW_TOOLTIPS = "Where to Show Mythic+ and Raid Progress"
L.MAINS_RAID_PROGRESS = "Main's Progress"
L.HIDE_OWN_PROFILE = "Hide Personal Raider.IO Profile Tooltip"
L.HIDE_OWN_PROFILE_DESC = "When set this will not show your own Raider.IO Profile Tooltip, but may show other player's if they have one."
L.SHOW_RAID_ENCOUNTERS_IN_PROFILE = "Show Raid Encounters in Profile Tooltip"
L.SHOW_RAID_ENCOUNTERS_IN_PROFILE_DESC = "When set this will show Raid Encounter progress in Raider.IO Profile Tooltips"
L.CHOOSE_HEADLINE_HEADER = "Mythic+ Tooltip Headline"
L.SHOW_CURRENT_SEASON = "Show Current Mythic+ Season Score as Headline"
L.SHOW_CURRENT_SEASON_DESC = "Shows the player's current Mythic+ season score as the tooltip headline."
L.SHOW_BEST_SEASON = "Show Best Mythic+ Season Score as Headline"
L.SHOW_BEST_SEASON_DESC = "Shows the player's best Mythic+ season score as the tooltip headline. If the score is from a previous season, the season will be indicated as part of the tooltip headline."
L.SHOW_BEST_RUN = "Show Best Mythic+ Run as Headline"
L.SHOW_BEST_RUN_DESC = "Show the player's best Mythic+ run from the current season as the tooltip headline."
L.SEASON_LABEL_1 = "S1-P"
L.SEASON_LABEL_2 = "S2"
L.SEASON_LABEL_3 = "S3"
L.SEASON_LABEL_4 = "S4"
L.USE_ENGLISH_ABBREVIATION = "Force English Abbreviations for Dungeons"
L.USE_ENGLISH_ABBREVIATION_DESC = "When set, this will overrides the abbreviations used for dungeons to be the English versions, rather than your current language."
L.CANCEL = "Cancel"
L.CONFIRM = "Confirm"
L.ENABLE_DEBUG_MODE_RELOAD = "You are enabling Debug Mode. This is intended for testing and development purposes only, and will incur additional memory usage.\n\n Clicking Confirm will Reload your Interface."
L.DISABLE_DEBUG_MODE_RELOAD = "Your are disabling Debug Mode.\n\nClicking Confirm will Reload your Interface."
L.WARNING_DEBUG_MODE_ENABLE = "|cffFFFFFF%s|r Debug Mode is enabled. You may disable it by typing |cffFFFFFF/raiderio debug|r."

ns.L = L
