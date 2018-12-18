//
//  MLConstant+UserDefaultKey.swift
//  MedLinker
//
//  Created by EchoRed on 09/02/2017.
//  Copyright © 2017 medlinker. All rights reserved.
//

import UIKit

struct MLConstantUserDefaultKey {
    let selectedSessionKey = "SelectedSession"
    let visitorSelectedSectionId = "visitorSelectedSectionId"
    let primaryDataVersionKey = "PrimaryDataVersion"
    let caseStoreSectionSyncKey = "caseStoreSectionSyncKey"
    let envKey = "wll"
    let liveVideoFirstUseGuidePresentedKey = "lvfugpk"
    let liveVideoSwipeToHideGuidePresentedKey = "lvsthgpk"
    let liveVideoSwipeToShowGuidePresentedKey = "lvstsgpk"
    let angelCircleOpened = "angelCircleOpened"
    let angelCircleArrowGuide = "angelCircleArrowGuide"
    let keyanzhushou = "keyanzhushou"
    let clikMineHashKeyServerList = "clikMineHashKeyServerList"
    let isReadMineTab = "isReadMineTab"

    /// 判断是否第一次运行app，false为第一次运行，true为已经运行过
    let appLaunchedKey = "alk"
}
