if not LOCALE_ruRU then return end

local addonName, Data = ...
local L = Data.L;

L["Allies"] = "Союзники"
L["allies"] = "союзники"
L["ally"] = "союзник"
L["Ally"] = "Союзник"
L["AllyIsTargeted"] = "Союзник взят в цель"
L["AllyJoined"] = "Союзник присоединился к полю боя"
L["AllyLeft"] = "Союзник покинул поле боя"
L["AND"] = "и"
L["AttachToObject"] = "Прикрепить к объекту"
L["AttachToObject_Desc"] = "Обратите внимание, что не каждый объект может быть выбранным, в зависимости от расположения других ваших фреймов. Например, если вы привязываете pvp-таланты к расовым способностям и пытаетесь привязать расовые способности к pvp-талантам, появится сообщение об ошибке."
L["Auras_Buffs_Container_Color_Desc"] = "Цвет границы окна баффов"
L["Auras_CustomFiltering_Conditions_All"] = "Все"
L["Auras_CustomFiltering_Conditions_Any"] = "Любые"
L["Auras_CustomFiltering_ConditionsMode"] = "Режим условий"
L["Auras_CustomFiltering_ConditionsMode_Desc"] = "Здесь вы можете выбрать, как выбранные условия должны применяться к аурам. Если вы выберете «Любой», аддон отобразит ауру, как только будет выполнено одно из выбранных вами условий. Если вы выберете «Все», аддон будет отображать ауру только в том случае, если он соответствует всем выбранным вами условиям."
L["Auras_Debuffs_Coloring_Enabled"] = "Цвет по типу дебаффа"
L["Auras_Debuffs_Coloring_Enabled_Desc"] = "Включение этой опции дает возможность изменять цвет границы фрейма или текста отсчета по типу дебаффа (как в интерфейсе по умолчанию, яды - зеленые, болезни - синие и т. д.)"
L["Auras_Debuffs_Container_Color_Desc"] = "Цвет границы окна дебаффов"
L["Auras_Enabled"] = "Включить ауры"
L["Auras_Enabled_Desc"] = "Когда включено, то будут значки ауры. А также будет количество времени перезарядки, а другой - для примененных стаков"
L["Auras_Filtering_Mode"] = "Режим фильтрации"
L["Auras_Filtering_Mode_Desc"] = "Здесь вы можете выбрать, какой фильтр применять к аурам. Вы можете выбрать между фильтром, подобным blizzlike, который применяет тот же фильтр, что и Blizzard, применяемый к рамке рейда, и пользовательскими условиями фильтрации."
L["Auras_ShowTooltips"] = "Показать подсказки заклинаний"
L["AurasCustomConditions"] = "Пользовательские условия"
L["AurasFiltering_AddSpellID"] = "ID Зaклинания"
L["AurasFiltering_AddSpellID_Desc"] = "Введите ID или несколько ID, разделенными запятыми. ID добавляются в список фильтров. При включенной фильтрации ID отображается, только ауры, у которых указаны в списке фильтров."
L["AurasFiltering_Enabled_Desc"] = "Если этот параметр включен, вы увидите только %s, которые были добавлены в список фильтрации"
L["AurasFiltering_Filterlist_Desc"] = "Нажмите, чтобы удалить этот %s"
L["AurasFilteringSettings_Desc"] = "Здесь Вы можете контролировать, какая аура отображается"
L["AurasSettings"] = "Ауры"
L["AurasSettings_Desc"] = "Настройки аур (баффы и дебаффы)"
L["AurasStacktextSettings"] = "Текст стаков"
L["BarBackground"] = "Цвет Фона"
L["BarHeight_Desc"] = "Высота каждой полосы. Изменение этих настроек недоступно во время боя из-за ограничений интерфейса."
L["BarSettings"] = "Настройки полосы"
L["BarSettings_Desc"] = "Здесь вы можете настроить полосы"
L["BarTexture"] = "Текстура полосы"
L["BarWidth_Desc"] = "Ширина каждой полосы. Изменение этих настроек недоступно во время боя из-за ограничений интерфейса."
L["BattlegroundSize"] = "Размер поля боя"
L["BGSize_15"] = "1-15 игроков"
L["BGSize_15_Desc"] = "Эта настройка применяется для %s в ПБ с 1-15 игроками на каждой стороне"
L["BGSize_40"] = "16-40 игроков"
L["BGSize_40_Desc"] = "Эта настройка применяется для %s в ПБ с 16-40 игроками на каждой стороне"
L["BGSize_5"] = "Арена"
L["BGSize_5_Desc"] = "Эта настройка применяется для %s на аренах."
L["BlizzlikeAuraFiltering"] = "Использовать фильтр рейд фреймов от Blizzard"
L["BorderThickness"] = "Размер границы"
L["BOTTOM"] = "Нижний"
L["BOTTOMLEFT"] = "Нижний левый"
L["BOTTOMRIGHT"] = "Нижний правый"
L["buff"] = "бафф"
L["BuffContainer"] = "Контейнер баффов"
L["BuffIcon"] = "Иконка баффа"
L["Buffs"] = "Баффы"
L["Button"] = "Кнопка"
L["CantAnchorToItself"] = "Невозможно закрепить на самого себя!"
L["CENTER"] = "Центр "
L["Columns"] = "Столбцы"
L["Columns_Desc"] = "Сколько столбцов на игроках отображаются."
L["ConfirmProfileOverride"] = "Вы уверены, что хотите переопределить подпрофиль %s с подпрофилем %s"
L["Container_Color"] = "Цвет границы контейнера"
L["ContainerPosition"] = "Положение контейнера"
L["ConvertCyrillic"] = "Преобразовать кириллицу"
L["ConvertCyrillic_Desc"] = "Преобразование кириллических символов, что позволяет легче читать их имена, если Вы играете против россиян"
L["CopySettings"] = "Копирование настроек из %s"
L["CopySettings_Desc"] = "Нажмите здесь, если вы хотите импортировать настройки на подпрофиль %s."
L["Countdowntext"] = "Текст отсчёта"
L["CovenantIcon_Enabled"] = "Включить иконки ковенантов"
L["CovenantIcon_Enabled_Desc"] = "Включите это, если вы хотите отобразить иконку ковенанта на полоске здоровья"
L["CovenantIcon_Size_Desc"] = "Размер иконок ковенанта (ширина и высота)"
L["CovenantIconSettings"] = "Иконка ковенанта"
L["CovenantIconSettings_Desc"] = "Настройки для иконки ковенанта, которая отображается на полоске здоровья"
L["CurrentVersion"] = "Данная версия"
L["Curse"] = "Curse"
L["CustomMacro_Desc"] = [=[При включении позволяет Вам задать пользовательский макрос. Пустое поле приведет к пустому макросу.
Доступные замены: %n получает замененного именем противника

Пример:
/cast Polymorph
/say Polymorph on %n
/targetlasttarget

Если цель противник, применяет Превращение, и пишет сообщение в канал say и далее выделяет вашу предыдущую цель.
Обратите внимание, что макросы можно писать только до 255 символов (включая замены).]=]
L["debuff"] = "дебафф"
L["DebuffContainer"] = "Контейнер дебаффов"
L["DebuffIcon"] = "Иконка дебаффа"
L["Debuffs"] = "Дебаффы"
L["DebuffType_Filtering"] = "Фильтр по типу дебаффа"
L["DebuffType_Filtering_Desc"] = "Когда этот параметр включен, то вы увидите только дебаффы выбранного типа. Этот параметр не моделируется в тестовом режиме, так как для этого потребуется огромная база данных с тоннами заклинаний и их типом баффа."
L["DisableArenaFrames"] = "Отключение рамок арены"
L["DisableArenaFrames_Desc"] = "Отключает рамки арены на поле боя. Также работает при установке sArena"
L["Disease"] = "Болезнь"
L["DisplayType"] = "Тип отображения"
L["Downwards"] = "Вниз"
L["DR_Disorient"] = "Дезориентация"
L["DR_Incapacitate"] = "Паралич"
L["DR_Knockback"] = "Отбрасывание"
L["DR_Root"] = "Сковывание"
L["DR_Silence"] = "Немота"
L["DR_Stun"] = "Оглушение"
L["DRContainer"] = "Контейнер DR"
L["DrTracking_Container_Color_Desc"] = "Цвет границы контейнера DR"
L["DrTracking_DisplayType_Desc"] = "Здесь Вы можете выбрать, должен ли статус DR быть с окрашенной рамкой, вокруг значка или быть, с цветовой перезарядкой в тексте. Обратите внимание, что настройки перезарядки текста будут работать - только в том случае, если Вы не используете аддон типа OmniCC, который изменяет цвет текста."
L["DrTracking_Enabled"] = "Включить слежение за DR"
L["DrTracking_Enabled_Desc"] = "Когда включено, слева от вражеских полос будут иконки слежения за диминишингом (DR). Зелёная рамка: Следующий контроль будет действовать половину времени. Жёлтая рамка: Следующий контроль будет действовать четверть времени. Красная рамка: Следующий контроль не будет действовать, потому что цель имунна."
L["DrTracking_Spacing"] = "Интервал DR"
L["DrTracking_Spacing_Desc"] = "Расстояние между иконками DR"
L["DrTrackingFiltering_Enabled_Desc"] = "При включении будут отображаться только иконки заклинаний из выбранных категорий."
L["DrTrackingFiltering_Filterlist_Desc"] = "Щёлкните чтобы отслеживать/не отслеживать эту категорию"
L["DrTrackingFilteringSettings_Desc"] = "Здесь можно выбрать какие категории DR будут отобржаться."
L["DrTrackingSettings"] = "Отслеживание DR"
L["DrTrackingSettings_Desc"] = "Настройки касающиеся отслеживания DR"
L["EnableClique"] = "Используйте Clique для привязки клавиш"
L["EnableClique_Desc"] = "Когда этот параметр включен, Clique будет обрабатывать все сочетания клавиш."
L["Enemies"] = "Враги"
L["enemies"] = "враги"
L["EnemiesTargetingAllies_Enabled_Desc"] = "Когда вы включите эту функцию, вы будете оповещены звуком, когда определённое количество врагов целят союзника"
L["EnemiesTargetingMe_Enabled_Desc"] = "Когда вы включите эту функцию, вы будете оповещены звуком, когда определённое количество врагов целят вас "
L["enemy"] = "враг"
L["Enemy"] = "Враг"
L["EnemyJoined"] = "Враг присоединился к полю боя"
L["EnemyLeft"] = "Враг покинул поле боя"
L["Filtering_Enabled"] = "Включить фильтрацию"
L["Filtering_Filterlist"] = "Список фильтров"
L["FilterSettings"] = "Настройки фильтра"
L["Font"] = "Шрифт"
L["Font_Desc"] = "Основной шрифт, используемый этим аддоном"
L["Font_Outline"] = "Контур шрифта"
L["Font_Outline_Desc"] = "Контур для шрифта"
L["Fontcolor"] = "Цвет шрифта"
L["Fontcolor_Desc"] = "Цвет текста"
L["FontShadow_Enabled"] = "Включить тень шрифта"
L["FontShadow_Enabled_Desc"] = "Когда включено будет тень вокруг шрифта. Вы можете выбрать цвет для этой тени"
L["FontShadowColor"] = "Цвет тени"
L["FontShadowColor_Desc"] = "Цвет тени у текста"
L["Fontsize"] = "Размер шрифта"
L["Fontsize_Desc"] = "Размер шрифта текста"
L["Frame"] = "Рамка"
L["Framescale"] = "Масштаб"
L["Framescale_Desc"] = "Масштаб главной рамки. Эта настройка недоступна в бою из-за боевой защиты Blizzard."
L["General"] = "Основное"
L["GeneralSettings"] = "Основные настройки"
L["GeneralSettings_Desc"] = "Некоторые основные настройки"
L["GeneralSettingsAllies"] = "Эти настройки применяются к союзникам, независимо от размера поля боя"
L["GeneralSettingsEnemies"] = "Эти настройки применяются к врагам, независимо от размера поля боя"
L["HealthBar_Background_Desc"] = "Цвет фона для полос здоровья."
L["HealthBar_Texture_Desc"] = "Текстура, используемая для полосы здоровья"
L["HealthBarSettings"] = "Полоса здоровья"
L["HealthBarSettings_Desc"] = "Настройки для полосы здоровья."
L["Height"] = "Высота"
L["Highlight_Color"] = "Цвет выделения"
L["Highlight_Color_Desc"] = "Цвет рамки игрока, на которым находится Ваш курсор"
L["HorizontalGrowdirection"] = "Горизонтальное направление роста"
L["HorizontalGrowdirection_Desc"] = "Позволяет выбрать, куда растут строки влево или вправо"
L["HorizontalSpacing"] = "Горизонтальный интервал"
L["IAmTargeted"] = "Меня целят "
L["IconsPerRow"] = "Иконка в строке"
L["KeybindSettings_Desc"] = "Здесь Вы можете настроить то, что должно произойти при нажатии левой-правой и средней кнопки"
L["LEFT"] = "Слева"
L["LeftToTargetCounter"] = "Слева от счетчика целей"
L["Leftwards"] = "Влево"
L["LevelText_Enabled"] = "Показать уровень игрока"
L["LevelText_OnlyShowIfNotMaxLevel"] = "Показывать только до максимального уровня"
L["LevelTextSettings"] = "Уровень игрока"
L["Locked"] = "Закрепить"
L["Locked_Desc"] = "Закрепляет рамку на месте"
L["Magic"] = "Магия"
L["MainFrameSettings"] = "Основные настройки рамки"
L["MainFrameSettings_Desc"] = "Настройки основной рамки, который используется для %s"
L["MaxPlayers"] = "Максимально врагов"
L["MaxPlayers_Desc"] = "Аддон не показывает врагов если есть больше врагов, чем заданное число"
L["MyFocus_Color"] = "Окрашивать запомненную цель"
L["MyFocus_Color_Desc"] = "Цвет, используемый для границ, указывающую, на Вашу текущую запомненную цель"
L["MyTarget_Color"] = "Окрашивать цель"
L["MyTarget_Color_Desc"] = "Цвет, используемый для границ вокруг полос здоровья, указывающую текущую цель"
L["MyVersion"] = "Вы используете версию "
L["Name"] = "Имена"
L["Name_Desc"] = "Настройки имён для полос здоровья."
L["NewVersionAvailable"] = "Доступна новая версия"
L["None"] = "Нет"
L["Normal"] = "Обычный"
L["NotAvailableInCombat"] = "Эта настройка недоступна, когда Вы в бою из-за боевых ограничений Blizzard."
L["Notifications_Allies_Enabled_Desc"] = "Когда включено, Вы будете уведомлены, когда союзник покидает поле боя или присоединяется к нему."
L["Notifications_Enabled"] = "Включить уведомления"
L["Notifications_Enemies_Enabled_Desc"] = "Когда включено, Вы будете уведомлены, когда враг покидает поле боя или присоединяется к нему."
L["NoVersion"] = "Аддон не найден"
L["NumericTargetindicator"] = "Счетчик целей"
L["NumericTargetindicator_Enabled_Desc"] = "Показывает, сколько %s нацелились на игрока."
L["ObjectiveAndRespawn_ObjectiveEnabled"] = "Показывать Ключевые Задачи"
L["ObjectiveAndRespawn_ObjectiveEnabled_Desc"] = "Показывать иконку флага, вагонетки или сферы могущества рядом с полоской"
L["ObjectiveAndRespawn_Position"] = "Позиция"
L["ObjectiveAndRespawn_Position_Desc"] = "Где должна быть иконка Ключевых задач, слева от иконки специализаций или справа от иконок Медальон/рассовых способностей."
L["ObjectiveAndRespawn_RespawnEnabled"] = "Включить Таймер Возрождения"
L["ObjectiveAndRespawn_RespawnEnabled_Desc"] = "При включении, появляется иконка отображающая время до возрождения врага."
L["ObjectiveAndRespawn_Width_Desc"] = "Ширина иконки Ключевых Задач"
L["ObjectiveAndRespawnSettings"] = "Ключевые Задачи"
L["ObjectiveAndRespawnSettings_Desc"] = "Настройки отображения Ключевых Задач на поле боя"
L["OffsetX"] = "Смещение X"
L["OffsetY"] = "Смещение Y"
L["OldVersion"] = "Устаревшая версия"
L["PlayerCount_Enabled"] = "Подсчет игроков"
L["PlayerCount_Enabled_Desc"] = "Если требуется текст для текущего числа игроков. Обратите внимание, что этот счетчик может отличаться от текущего количества показанных строк, связи с боевой защитой или покиданием союзников/врагов из РПБ"
L["Point"] = "Точка "
L["PointAtObject"] = "Точка на объекте"
L["Poison"] = "Яд"
L["Position"] = "Позиция "
L["PowerBar_Background_Desc"] = "Цвет фона для полос ресурсов."
L["PowerBar_Enabled"] = "Включить полосу ресурсов"
L["PowerBar_Enabled_Desc"] = "Включите этот параметр, если Вы не видите полос ресурса, чтобы увидеть такие, как мана, ярость и т. д."
L["PowerBar_Height_Desc"] = "Высота полос ресурсов. Если сделать панель ресурсов выше, она автоматически сократится"
L["PowerBar_Texture_Desc"] = "Текстура используемая для полосы ресурсов"
L["PowerBarSettings"] = "Особый ресурс"
L["PowerBarSettings_Desc"] = "Настройки для полос особого ресурса"
L["Racial_Enabled"] = "Включить расовые способности"
L["Racial_Enabled_Desc"] = "Когда включено будут значки для использованных расовых способностей"
L["Racial_Width_Desc"] = "Ширина значка расовых способностей."
L["RacialFiltering_Enabled_Desc"] = "Когда этот параметр включен, Вы увидите только расы, которые проверяются в списке фильтрации."
L["RacialFiltering_Filterlist_Desc"] = "Нажмите, чтобы отслеживать / не отслеживать эту расовую способность"
L["RacialFilteringSettings_Desc"] = "Здесь вы можете выбрать расовую способность, которую Вы хотите отследить"
L["RacialSettings"] = "Расовые способности"
L["RacialSettings_Desc"] = "Настройки, касающиеся расовых способностей"
L["RangeIndicator_Alpha"] = "Прозрачность"
L["RangeIndicator_Alpha_Desc"] = "Прозрачность полоски, когда враг вне заданной зоны досягаемости"
L["RangeIndicator_Enabled"] = "Включить индикатор расстояния"
L["RangeIndicator_Enabled_Desc"] = "Когда этот параметр включен, рамка будет использовать выбранную прозрачность, когда враг вне заданной зоны досягаемости"
L["RangeIndicator_Everything"] = "Всё"
L["RangeIndicator_Frames"] = "Изменить прозрачность на"
L["RangeIndicator_Frames_Desc"] = "Задайте, какие части врага ряда, должны быть показаны с большей прозрачностью, когда противник находится вне досягаемости."
L["RangeIndicator_Range"] = "Расстояние"
L["RangeIndicator_Range_Desc"] = "Когда враг больше, чем это расстояние (в метрах), то на его рамку будет использоваться выбранная прозрачность"
L["RangeIndicator_Settings"] = "Индикатор расстояния"
L["RangeIndicator_Settings_Desc"] = "Здесь Вы можете настроить индикатор расстояния."
L["RBGSpecificSettings"] = "Рейтинговые ПБ"
L["RBGSpecificSettings_Desc"] = "Эти настройки применяются только в РПБ (Рейтинговое поле боя)"
L["RIGHT"] = "Справа "
L["Rightwards"] = "Направо"
L["RoleIcon_Enabled"] = "Включить значки ролей"
L["RoleIcon_Enabled_Desc"] = "Включите этот параметр, если Вы хотите увидеть значок роли на полосе здоровья"
L["RoleIcon_Size_Desc"] = "Размер значков для роли (ширина и высота)"
L["RoleIconSettings"] = "Значок ролей"
L["RoleIconSettings_Desc"] = "Настройки значка роли, отображаемого на полосе здоровья"
L["ShowMine"] = "Показывать только мой"
L["ShowMine_Desc"] = "Показывать только %s что я применил(а)"
L["ShowNumbers"] = "Отображать время"
L["ShowNumbers_Desc"] = "Показывать кулдаун, эта функция может не работать, если вы используете такие аддоны как OmniCC"
L["ShowRealmnames"] = "Отображать имена игровых миров"
L["ShowRealmnames_Desc"] = "Отображает имя игрового мира врагов"
L["ShowTooltips"] = "Показать подсказки"
L["ShowTooltips_Desc"] = "Показывать подсказки, когда указатель мыши наводится на иконки типа ауры или медальона"
L["Side"] = "Сторона "
L["SideAtObject"] = "Сторона объекта"
L["Size"] = "Размер"
L["Spec_AuraDisplay_Enabled"] = "Включить отображение аур"
L["Spec_AuraDisplay_Enabled_Desc"] = "Когда этот параметр включен, вместо значка специализаций отображаются значки для управления толпой и прерываний (когда активна)"
L["Spec_Enabled"] = "Включить специализацию"
L["Spec_Enabled_Desc"] = "При включении будут значки для специализации игроков"
L["Spec_Width_Desc"] = "Ширина значка специализации."
L["SpecSettings"] = "Специализации"
L["SpecSettings_Desc"] = "Настройки, изменяющие значок специализации."
L["SpellID_Filtering"] = "Фильтр по spellID"
L["SymbolicTargetindicator_Enabled"] = "Метка Нацеливания"
L["SymbolicTargetindicator_Enabled_Desc"] = "Показывает квадрат, на классовых окрашенных значках для каждого %s, который нацелился на игрока."
L["TargetAmount"] = "количество целей"
L["TargetAmount_Ally"] = "Звук проигрывается, как только участник вашей группы взят в цель, превышающим определенное число, количеством врагов"
L["TargetAmount_Me"] = "Звук проигрывается, как только вы взяты в цель, превышающим определенное число, количеством врагов"
L["TargetCallerUpdated"] = "теперь наводчик "
L["TargetCalling"] = "Наводка"
L["TargetCallingNotificationEnable"] = "Включить звуковое оповещение"
L["TargetCallingNotificationEnable_Desc"] = "Уведомить о появлении новой цели (обнаруживается через метку черепа)"
L["TargetCallingSetMark"] = "Пометить мою цель меткой черепа"
L["TargetCallingSetMark_Desc"] = "Автоматически отмечает текущую цель черепом, когда вы лидер рейда и в вашей группе нет помощников. Также отмечает вашу цель, если вы не лидер рейда, но являетесь помощником."
L["TargetCallingShowIcon"] = "Показать иконку на цели наводчика "
L["TargetCallingShowIcon_Desc"] = "Когда функция включена, то вы увидите иконку, показывающую цель наводчика на его фрейме"
L["TargetCallingSoundEnable"] = "Уведомить о новой цели"
L["TargetCallingSoundEnable_Desc"] = "Когда функция включена, воспроизводится звук при смены цели наводчика"
L["TargetCallingSoundSound"] = "Звук уведомления"
L["TargetIndicator"] = "Индикатор цели"
L["TargetIndicator_Desc"] = "Цифровое и визуальное отображение индикаторов цели"
L["Testmode_Toggle"] = "Тестовый режим"
L["Testmode_Toggle_Desc"] = [=[Включает/выключает режим тестирования. Этот режим позволяет вам легче увидеть на то, что влияет большинства параметров. Не возможно смоделировать все варианты, но большинство из них показаны в этом причудливом тестовом режиме.
Тестовый режим отключен, если Вы находитесь на поле боя.]=]
L["Testmode_ToggleAnimation"] = "Вкл/Выкл анимацию"
L["Testmode_ToggleAnimation_Desc"] = "Включает/выключает анимацию тестового режима, так что Вы можете сосредоточиться на конкретной настройке, не отвлекаясь на анимации."
L["TestmodeSettings"] = "Тестовый режим"
L["Thick"] = "Толстый"
L["TOP"] = "Верх"
L["TOPLEFT"] = "Верхний левый"
L["TOPRIGHT"] = "В правом верхнем углу"
L["Trinket_Enabled"] = "Включить Медальоны"
L["Trinket_Enabled_Desc"] = "Когда включено, появится значки для Медальона гладиатора, Адаптации и Непреклонности."
L["Trinket_Width_Desc"] = "Ширина медальона."
L["TrinketSettings"] = "Медальон"
L["TrinketSettings_Desc"] = "Настройки, касающиеся медальонов"
L["Upwards"] = "Выше"
L["UseBarHeight"] = "Использовать высоту полос"
L["UserDefined"] = "Пользовательский"
L["VerticalGrowdirection"] = "Вертикальное направление роста"
L["VerticalGrowdirection_Desc"] = "Позволяет выбрать, будут ли полосы расти вверх или вниз"
L["VerticalPosition"] = "Вертикальная позиция"
L["VerticalSpacing"] = "Вертикальный интервал"
L["Width"] = "Ширина"
