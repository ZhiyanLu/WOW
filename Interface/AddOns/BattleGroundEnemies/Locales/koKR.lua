if not LOCALE_koKR then return end

local addonName, Data = ...
local L = Data.L;

L["Allies"] = "아군"
L["allies"] = "아군"
L["ally"] = "아군"
L["Ally"] = "아군"
L["AllyJoined"] = "아군이 전장에 참여했습니다"
L["AllyLeft"] = "아군이 전장을 떠났습니다"
L["AND"] = "그리고"
L["AttachToObject"] = "개체에 붙이기"
L["AttachToObject_Desc"] = "다른 프레임의 위치에 따라 모든 개체를 선택할 수 있진 않습니다. 예를 들어 pvp 특성을 종족 특성에 고정시킨 후 종족 특성을 pvp 특성에 고정시키려고 시도하면 오류 메시지가 표시됩니다."
L["Auras_Buffs_Container_Color_Desc"] = "강화 효과 아이콘 묶음의 테두리 색상입니다"
L["Auras_Debuffs_Coloring_Enabled"] = "약화 효과 유형 별 색상"
L["Auras_Debuffs_Coloring_Enabled_Desc"] = "이 옵션을 활성화하면 프레임의 테두리 또는 초읽기 문자에 약화 효과 유형에 따라 색상을 입힙니다 (기본 UI에서 알 수 있는 독은 녹색, 질병은 푸른색 등.)"
L["Auras_Debuffs_Container_Color_Desc"] = "약화 효과 아이콘 묶음의 테두리 색상입니다"
L["Auras_Enabled"] = "효과 활성화"
L["Auras_Enabled_Desc"] = "활성화하면 효과 아이콘이 표시됩니다. 남은 시간과 중첩 적용 횟수의 숫자도 표시됩니다."
L["Auras_ShowTooltips"] = "주문 툴팁 표시"
L["AurasFiltering_AddSpellID"] = "주문ID"
L["AurasFiltering_AddSpellID_Desc"] = "주문ID나 콤마로 구분한 여러 개의 주문ID를 입력하세요. 주문ID는 당신의 필터 목록에 추가됩니다. 주문ID 필터가 활성화되었을 때 필터 목록에 있는 주문ID의 효과만 표시됩니다."
L["AurasFiltering_Enabled_Desc"] = "이 옵션을 활성화하면 당신이 필터 목록에 추가한 %s만 확인할 수 있습니다."
L["AurasFiltering_Filterlist_Desc"] = "이 %s|1을;를; 제거하려면 클릭"
L["AurasFilteringSettings_Desc"] = "여기서 표시된 효과를 제어할 수 있습니다"
L["AurasSettings"] = "효과"
L["AurasSettings_Desc"] = "효과를 설정합니다 (강화 효과와 약화 효과)"
L["AurasStacktextSettings"] = "중첩 문자"
L["BarBackground"] = "배경 색상"
L["BarHeight_Desc"] = "각 바의 높이입니다. 이 설정은 블리자드의 전투 보호때문에 전투 중에 설정할 수 없습니다."
L["BarSettings"] = "바 설정"
L["BarSettings_Desc"] = "여기서 바를 구성할 수 있습니다"
L["BarTexture"] = "바 텍스쳐"
L["BarWidth_Desc"] = "각 바의 너비입니다. 이 설정은 블리자드의 전투 보호때문에 전투 중에 설정할 수 없습니다."
L["BattlegroundSize"] = "전장 규모"
L["BGSize_15"] = "1-15인"
L["BGSize_15_Desc"] = "이 설정은 진영 별 1-15인 규모의 전장에서 %s에게 적용됩니다"
L["BGSize_40"] = "16-40인"
L["BGSize_40_Desc"] = "이 설정은 진영 별 16-40인 규모의 전장에서 %s에게 적용됩니다"
L["BorderThickness"] = "테두리 크기"
L["BOTTOM"] = "하단"
L["BOTTOMLEFT"] = "왼쪽 하단"
L["BOTTOMRIGHT"] = "오른쪽 하단"
L["buff"] = "강화 효과"
L["BuffContainer"] = "강화 효과 묶음"
L["BuffIcon"] = "강화 효과 아이콘"
L["Buffs"] = "강화 효과"
L["Button"] = "버튼"
L["CantAnchorToItself"] = "자기 자신에게는 고정할 수 없습니다!"
L["CENTER"] = "중앙"
L["Columns"] = "열"
L["Columns_Desc"] = "플레이어가 표시되는 열의 수입니다."
L["ConfirmProfileOverride"] = "정말 서브프로필 %s|1을;를; %s|1으로;로; 덮어쓸까요?"
L["Container_Color"] = "묶음 테두리 색상"
L["ContainerPosition"] = "묶음 위치"
L["ConvertCyrillic"] = "키릴 문자 전환"
L["ConvertCyrillic_Desc"] = "러시아어로 플레이 중이라면 이름을 읽기 쉽게 만들어 주는 키릴 문자로 전환합니다"
L["CopySettings"] = "%s의 설정 복사하기"
L["CopySettings_Desc"] = "서브프로필 %s의 설정을 가져오려면 여기를 클릭하세요"
L["Countdowntext"] = "초읽기 문자"
L["Curse"] = "저주"
L["CustomMacro_Desc"] = [=[활성화하면 사용자 설정 매크로를 설정할 수 있습니다. 빈 영역은 빈 매크로로 이어집니다.
사용할 수 있는 대체어: %n 적의 이름으로 대체됩니다

예제:
/targetexact %n
/cast 변이
/say %n에게 변이
/targetlasttarget

적을 대상 지정하고, 변이를 시전하고, 일반 대화 채널에 메시지를 쓰고 이전 대상을 대상 지정합니다.
매크로는 255자 길이까지만 가능합니다 (대체어 포함).]=]
L["debuff"] = "약화 효과"
L["DebuffContainer"] = "약화 효과 묶음"
L["DebuffIcon"] = "약화 효과 아이콘"
L["Debuffs"] = "약화 효과"
L["DebuffType_Filtering"] = "약화 효과 유형 별 필터"
L["DebuffType_Filtering_Desc"] = "이 옵션을 활성화하면 선택한 유형의 약화 효과만 확인할 수 있습니다. 이 옵션은 많은 주문과 약화 효과 유형의 거대한 데이터베이스가 필요하기 때문에 테스트 모드에서 실현되지 않습니다."
L["DisableArenaFrames"] = "투기장 프레임 비활성"
L["DisableArenaFrames_Desc"] = "전장에서 투기장 프레임을 비활성합니다. sArena가 설치되어 있을 때도 작동합니다"
L["Disease"] = "질병"
L["DisplayType"] = "표시 형식"
L["Downwards"] = "아래로"
L["DR_Disorient"] = "방향 감각 상실"
L["DR_Incapacitate"] = "행동 불가"
L["DR_Knockback"] = "밀쳐내기"
L["DR_Root"] = "이동 불가"
L["DR_Silence"] = "침묵"
L["DR_Stun"] = "기절"
L["DRContainer"] = "점감 묶음"
L["DrTracking_Container_Color_Desc"] = "점감 아이콘 묶음의 테두리 색상입니다"
L["DrTracking_DisplayType_Desc"] = "여기서 점감 상태를 아이콘 주변의 색상화된 프레임 또는 초읽기 문자의 문자 색상으로 나타낼 지 선택할 수 있습니다. 초읽기 문자 설정은 문자 색상을 변경하는 OmniCC 같은 애드온을 사용하지 않아야 작동합니다."
L["DrTracking_Enabled"] = "점감 추적 활성화"
L["DrTracking_Enabled_Desc"] = "활성화하면 적 바 옆에 점감 추적 아이콘이 표시됩니다. 녹색 테두리: 다음 군중 제어는 절반의 지속시간을 가집니다. 노란색 테두리: 다음 군중 제어는 1/4의 지속시간을 가집니다. 빨간색 테두리: 다음 군중 제어는 플레이어가 면역이므로 적용되지 않습니다"
L["DrTracking_Spacing"] = "점감 간격"
L["DrTracking_Spacing_Desc"] = "각 점감 아이콘의 간격입니다"
L["DrTrackingFiltering_Enabled_Desc"] = "이 옵션을 활성화하면 필터 목록에서 선택한 범주의 주문 아이콘만 표시합니다."
L["DrTrackingFiltering_Filterlist_Desc"] = "이 범주를 추적/추적 해제하려면 클릭"
L["DrTrackingFilteringSettings_Desc"] = "여기서 어떤 점감 범주를 표시할 지 선택할 수 있습니다."
L["DrTrackingSettings"] = "점감 추적"
L["DrTrackingSettings_Desc"] = "점감 추적에 관련된 설정입니다"
L["Enemies"] = "적"
L["enemies"] = "적"
L["enemy"] = "적"
L["Enemy"] = "적"
L["EnemyJoined"] = "적이 전장에 참여했습니다"
L["EnemyLeft"] = "적이 전장을 떠났습니다"
L["Filtering_Enabled"] = "필터 활성화"
L["Filtering_Filterlist"] = "필터 목록"
L["Font"] = "글꼴"
L["Font_Desc"] = "이 애드온에 사용할 주 글꼴입니다"
L["Font_Outline"] = "글꼴 외곽선"
L["Font_Outline_Desc"] = "글꼴의 외곽선입니다"
L["Fontcolor"] = "글꼴 색상"
L["FontShadow_Enabled"] = "글꼴 그림자 활성화"
L["FontShadow_Enabled_Desc"] = "활성화하면 글꼴 주위에 그림자가 생깁니다. 그림자의 색상을 선택할 수 있습니다"
L["FontShadowColor"] = "그림자 색상"
L["FontShadowColor_Desc"] = "문자 그림자의 색상입니다"
L["Fontsize"] = "글꼴 크기"
L["Frame"] = "프레임"
L["Framescale"] = "크기 비율"
L["Framescale_Desc"] = "주 프레임의 크기 비율입니다. 이 설정은 블리자드의 전투 보호때문에 전투 중에 설정할 수 없습니다."
L["General"] = "일반"
L["GeneralSettings"] = "일반 설정"
L["GeneralSettings_Desc"] = "일반 설정입니다"
L["GeneralSettingsAllies"] = "이 설정은 전장의 규모에 상관없이 아군에게 적용됩니다"
L["GeneralSettingsEnemies"] = "이 설정은 전장의 규모에 상관없이 적에게 적용됩니다"
L["HealthBar_Background_Desc"] = "생명력 바의 배경 색상입니다."
L["HealthBar_Texture_Desc"] = "생명력 바에 사용할 텍스쳐입니다"
L["HealthBarSettings"] = "생명력바"
L["HealthBarSettings_Desc"] = "생명력 바의 설정입니다."
L["Height"] = "높이"
L["Highlight_Color"] = "강조 색상"
L["Highlight_Color_Desc"] = "당신의 커서가 올려진 플레이어 프레임의 색상"
L["HorizontalGrowdirection"] = "수평 성장 방향"
L["HorizontalGrowdirection_Desc"] = "열이 왼쪽 또는 오른쪽 가장자리로 성장할지 선택합니다"
L["HorizontalSpacing"] = "수평 간격"
L["IconsPerRow"] = "열 당 아이콘"
L["KeybindSettings_Desc"] = "여기서 왼쪽- 오른쪽- 그리고 가운데 클릭 시 어떻게 작동할 지 구성할 수 있습니다"
L["LEFT"] = "왼쪽"
L["LeftToTargetCounter"] = "대상 지정 숫자 왼쪽에"
L["Leftwards"] = "왼쪽"
L["LevelText_Enabled"] = "플레이어의 레벨 표시"
L["LevelText_OnlyShowIfNotMaxLevel"] = "최고 레벨이 아닐 때만 표시"
L["LevelTextSettings"] = "플레이어 레벨"
L["Locked"] = "고정시키기"
L["Locked_Desc"] = "프레임을 현재 위치에 고정시킵니다"
L["Magic"] = "마법"
L["MainFrameSettings"] = "주 프레임 설정"
L["MainFrameSettings_Desc"] = "%s에게 사용할 주 프레임을 설정합니다"
L["MaxPlayers"] = "최대 적"
L["MaxPlayers_Desc"] = "이 숫자보다 적이 더 많으면 애드온은 적을 표시하지 않습니다"
L["MyFocus_Color"] = "주시 대상 색상"
L["MyFocus_Color_Desc"] = "당신의 현재 주시 대상을 나타내는 테두리에 사용할 색상입니다"
L["MyTarget_Color"] = "대상 색상"
L["MyTarget_Color_Desc"] = "당신의 현재 대상을 나타내는 생명력 바 주위 테두리에 사용할 색상입니다"
L["Name"] = "이름"
L["Name_Desc"] = "생명력 바 위의 이름을 설정합니다."
L["None"] = "안 함"
L["Normal"] = "보통"
L["NotAvailableInCombat"] = [=[
이 설정은 블리자드의 전투 제한때문에 당신이 전투 중일 때 사용할 수 없습니다.]=]
L["Notifications_Allies_Enabled_Desc"] = "활성화하면 아군이 전장에 참여 또는 탈영 시 당신이 알립니다."
L["Notifications_Enabled"] = "알림 활성화"
L["Notifications_Enemies_Enabled_Desc"] = "활성화하면 적이 전장에 참여 또는 탈영 시 당신이 알립니다."
L["NumericTargetindicator"] = "대상 지정 숫자"
L["NumericTargetindicator_Enabled_Desc"] = "몇명의 %s|1이;가; 플레이어를 대상 지정 중인 지 표시합니다."
L["ObjectiveAndRespawn_ObjectiveEnabled"] = "목표 표시"
L["ObjectiveAndRespawn_ObjectiveEnabled_Desc"] = "적 버튼 옆에 깃발, 광산 수레와 공-운반자 아이콘을 표시합니다"
L["ObjectiveAndRespawn_Position"] = "위치"
L["ObjectiveAndRespawn_Position_Desc"] = "전문화 아이콘의 왼쪽 또는 장신구/종족 특성 아이콘의 오른쪽에 아이콘을 표시합니다."
L["ObjectiveAndRespawn_RespawnEnabled"] = "재생성 타이머 활성화"
L["ObjectiveAndRespawn_RespawnEnabled_Desc"] = "활성화하면 적이 되살아나기까지 남은 시간을 나타내는 아이콘이 표시됩니다."
L["ObjectiveAndRespawn_Width_Desc"] = "목표 아이콘의 너비입니다"
L["ObjectiveAndRespawnSettings"] = "목표"
L["ObjectiveAndRespawnSettings_Desc"] = "전장의 목표와 관련된 설정입니다"
L["OffsetX"] = "X 위치"
L["OffsetY"] = "Y 위치"
L["PlayerCount_Enabled"] = "플레이어 인원 수"
L["PlayerCount_Enabled_Desc"] = "현재 플레이어 인원 수를 문자로 표시합니다. 전투 보호 또는 평점제 전장에서 적/아군의 탈영때문에 바에 표시된 현재 숫자와 다를 수 있습니다."
L["Point"] = "지점"
L["PointAtObject"] = "개체의 지점"
L["Poison"] = "독"
L["Position"] = "위치"
L["PowerBar_Background_Desc"] = "마력 바의 배경 색상입니다."
L["PowerBar_Enabled"] = "마력 바 활성화"
L["PowerBar_Enabled_Desc"] = "마나, 분노 등과 같은 마력 바를 보고 싶다면 이 옵션을 활성화하세요."
L["PowerBar_Height_Desc"] = "마력 바의 높이입니다. 마력 바의 높이를 키우면 자동으로 생명력 바의 높이는 줄어듭니다"
L["PowerBar_Texture_Desc"] = "마력 바에 사용할 텍스쳐입니다"
L["PowerBarSettings"] = "마력바"
L["PowerBarSettings_Desc"] = "마력 바 설정"
L["Racial_Enabled"] = "종족 특성 활성화"
L["Racial_Enabled_Desc"] = "활성화하면 종족 특성 아이콘을 표시합니다"
L["Racial_Width_Desc"] = "종족 특성의 너비입니다."
L["RacialFiltering_Enabled_Desc"] = "이 옵션을 활성화하면 당신이 필터 목록에서 선택한 종족 특성만 표시합니다."
L["RacialFiltering_Filterlist_Desc"] = "이 종족 특성을 추적/추적 해제하려면 클릭하세요"
L["RacialFilteringSettings_Desc"] = "여기서 당신이 추적하고 싶은 종족 특성을 선택할 수 있습니다"
L["RacialSettings"] = "종족 특성"
L["RacialSettings_Desc"] = "종족 특성과 관련된 설정입니다"
L["RangeIndicator_Alpha"] = "투명도"
L["RangeIndicator_Alpha_Desc"] = "적이 선택한 사정 거리를 벗어났을 때의 적 프레임 투명도입니다"
L["RangeIndicator_Enabled"] = "사정 거리 지시기 활성화"
L["RangeIndicator_Enabled_Desc"] = "이 옵션을 활성화하면 적이 선택한 사정 거리를 벗어났을 때 프레임에 선택한 투명도를 사용합니다"
L["RangeIndicator_Everything"] = "모든 요소의 투명도를 변경"
L["RangeIndicator_Frames"] = "투명도 변경:"
L["RangeIndicator_Frames_Desc"] = "적이 사정 거리를 벗어났을 때 적 바의 어떤 부분을 가장 높은 투명도로 표시할 지 설정합니다."
L["RangeIndicator_Range"] = "사정 거리"
L["RangeIndicator_Range_Desc"] = "적이 이 거리 (미터 단위)보다 멀어지면 그의 프레임에 선택한 투명도를 사용합니다"
L["RangeIndicator_Settings"] = "사정 거리 지시기"
L["RangeIndicator_Settings_Desc"] = "여기서 사정 거리 지시기를 설정할 수 있습니다."
L["RBGSpecificSettings"] = "평점제 전장"
L["RBGSpecificSettings_Desc"] = "이 설정은 평점제 전장에서만 적용됩니다"
L["RIGHT"] = "오른쪽"
L["Rightwards"] = "오른쪽"
L["RoleIcon_Enabled"] = "역할 아이콘 활성화"
L["RoleIcon_Enabled_Desc"] = "생명력 바 위에 역할 아이콘을 보고 싶다면 이 옵션을 활성화하세요"
L["RoleIcon_Size_Desc"] = "역할 아이콘의 크기 (너비와 높이)"
L["RoleIconSettings"] = "역할 아이콘"
L["RoleIconSettings_Desc"] = "생명력 바 위에 표시되는 역할 아이콘 설정"
L["ShowMine"] = "내 것만 표시"
L["ShowMine_Desc"] = "내가 적용한 %s만 표시합니다"
L["ShowNumbers"] = "숫자 표시"
L["ShowRealmnames"] = "서버 이름 표시"
L["ShowRealmnames_Desc"] = "적의 서버를 표시합니다"
L["Side"] = "가장자리"
L["SideAtObject"] = "개체의 가장자리"
L["Size"] = "크기"
L["Spec_AuraDisplay_Enabled"] = "효과 표시 활성화"
L["Spec_AuraDisplay_Enabled_Desc"] = "이 옵션을 활성화하면 전문화 아이콘 대신 군중 제어와 시전 방해 (활성화 시) 아이콘을 표시합니다"
L["Spec_Enabled"] = "전문화 활성화"
L["Spec_Enabled_Desc"] = "활성화하면 플레이어의 전문화 아이콘이 표시됩니다"
L["Spec_Width_Desc"] = "전문화 아이콘의 너비입니다."
L["SpecSettings"] = "전문화"
L["SpecSettings_Desc"] = "전문화 아이콘을 변경하는 설정입니다."
L["SpellID_Filtering"] = "주문ID 별 필터"
L["SymbolicTargetindicator_Enabled"] = "대상 상징"
L["SymbolicTargetindicator_Enabled_Desc"] = "플레이어를 대상 지정 중인 각 %s에게 직업 색상 네모 아이콘을 표시합니다."
L["TargetIndicator"] = "대상 지시기"
L["TargetIndicator_Desc"] = "숫자와 상징 대상 지시기"
L["Testmode_Toggle"] = "테스트 모드 전환"
L["Testmode_Toggle_Desc"] = "테스트 모드를 활성/비활성화 합니다. 이 모드는 대부분의 옵션이 주는 변화를 쉽게 확인할 수 있게 해줍니다. 모든 옵션을 표현해낼 수 없지만 이 테스트 모드에 대부분의 옵션이 포함되어 있습니다. 당신이 전장 내에 있으면 테스트 모드는 비활성화됩니다."
L["Testmode_ToggleAnimation"] = "테스트 모드 애니메이션 전환"
L["Testmode_ToggleAnimation_Desc"] = "애니메이션때문에 산만해지지 않고 특정 설정에 집중할 수 있도록 테스트 모드의 애니메이션을 켜거나/끕니다."
L["TestmodeSettings"] = "테스트 모드"
L["Thick"] = "두꺼운"
L["TOP"] = "상단"
L["TOPLEFT"] = "왼쪽 상단"
L["TOPRIGHT"] = "오른쪽 상단"
L["Trinket_Enabled"] = "장신구 활성화"
L["Trinket_Enabled_Desc"] = "활성화하면 검투사의 메달, 상황 적응과 가혹함의 아이콘을 표시합니다."
L["Trinket_Width_Desc"] = "장신구의 너비입니다."
L["TrinketSettings"] = "장신구"
L["TrinketSettings_Desc"] = "장신구 관련 설정입니다"
L["Upwards"] = "위로"
L["UseBarHeight"] = "바 높이 사용"
L["UserDefined"] = "사용자 정의"
L["VerticalGrowdirection"] = "수직 성장 방향"
L["VerticalGrowdirection_Desc"] = "바가 위나 아래로 성장하도록 선택합니다"
L["VerticalPosition"] = "수직 위치"
L["VerticalSpacing"] = "수직 간격"
L["Width"] = "너비"
