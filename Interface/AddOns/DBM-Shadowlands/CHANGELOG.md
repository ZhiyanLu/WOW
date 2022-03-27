# <DBM> World Bosses (Shadowlands)

## [9.1.21-16-ga763e89](https://github.com/DeadlyBossMods/DBM-Retail/tree/a763e89c22b3cf085e611ca2abd3261119c47b4f) (2021-11-23)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/9.1.21...a763e89c22b3cf085e611ca2abd3261119c47b4f) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- 4/11  
- Make Mitalie happy  
- Add zhCN (#693)  
    * Create localization.cn.lua  
    * Update localization.kr.lua  
    Fix GetLocale() ~= "koKR"  
    * Update DBM-Sepulcher.toc  
- 3/11  
- More modules;  
    - Migrated Commands  
    - Migrated Hyperlinks  
    - Migrated Notes Editor  
    - Cleaned up a bit of Core Lua  
- Redunant IsLatestCodebase function  
- Migrate commands into modules  
- Luacheck unused variables.  
- Fixed previous commit  
- Fixed a positioning error within the GUI  
- Remove redundant nil returns  
- Dausegne drycode  
- Revert one bad change  
- Add KR locale for Sepulcher (#692)  
- Safer usage for removing values from tables;  
    - In cases where we iterate and remove, just use twipe (table.wipe)  
    - In cases where its ipairs, use tremove (table.remove), as it's a SAFE CAST, otherwise iterating it can corrupt  
- Fixed commit signing, and bumped alphas  
