local findBodyPartWithName = function(model, queryName)
    for i = 0, model.transform.childCount - 1 do
      local child = model.transform:GetChild(i)
      if child.name:find(queryName) then
        return child.gameObject
      end
    end
  end
  local getOtherAvatarBipLocalRotation = function(avatar)
    for i = 0, avatar.transform.childCount - 1 do
      local checkbip = avatar.transform:GetChild(i)
      if checkbip.name == "Bip001" then
        return checkbip.gameObject.transform.localRotation
      end
    end
  end
  local getOtherAvatarBipRotation = function(avatar)
    for i = 0, avatar.transform.childCount - 1 do
      local checkbip = avatar.transform:GetChild(i)
      if checkbip.name == "Bip001" then
        return checkbip.gameObject.transform.rotation
      end
    end
  end
  local findActiveCharacter = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        return getCurrAvatar.gameObject
      end
    end
  end
  local findActiveCharacterBody = function(avatar)
    for i = 0, avatar.transform.childCount - 1 do
      local checkbody = avatar.transform:GetChild(i)
      if checkbody.name == "Body" then
        return checkbody.gameObject
      end
    end
  end
  local findActiveCharacterModel = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        for j = 0, getCurrAvatar.transform.childCount - 1 do
          local getOffsetDummy = getCurrAvatar.transform:GetChild(j)
          if getOffsetDummy.name:find("OffsetDummy") then
            local getAvatarFromOffsetDummy = getOffsetDummy.transform:GetChild(0)
            return getAvatarFromOffsetDummy.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterWeaponRoot = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("WeaponRoot") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterWeaponL = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("WeaponL") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterWeaponR = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("WeaponR") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterEyeL = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("+EyeBone L A01") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterEyeR = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("+EyeBone R A01") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterToothD = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("+ToothBone D A01") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterToothU = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("+ToothBone U A01") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveCharacterGlider = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("+FlycloakRootB CB A01") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findActiveClonedModel = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/CloneRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        return getCurrAvatar.gameObject
      end
    end
  end
  local findClonedCharacterWeaponRoot = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/CloneRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("Bip001 Spine1") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findClonedCharacterWeaponL = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/CloneRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("Bip001 L Hand") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findClonedCharacterWeaponR = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/CloneRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("Bip001 R Hand") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findClonedCharacterHeadBone = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/CloneRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("Bip001 Head") then
            return component.gameObject
          end
        end
      end
    end
  end
  local findClonedCharacterGlider = function()
    local avatarRoot = CS.UnityEngine.GameObject.Find("/EntityRoot/CloneRoot")
    if avatarRoot.transform.childCount == 0 then
      return
    end
    for i = 0, avatarRoot.transform.childCount - 1 do
      local getCurrAvatar = avatarRoot.transform:GetChild(i)
      if getCurrAvatar.gameObject.activeInHierarchy then
        local components = getCurrAvatar.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
        for j = 0, components.Length - 1 do
          local component = components[j]
          if component.name:find("Bip001 Spine2") then
            return component.gameObject
          end
        end
      end
    end
  end
  local swap = function()
    local currAvatarModel = findActiveCharacterModel()
    local clonedAvatarModel = findActiveClonedModel()
    local currAvatarWeaponRoot = findActiveCharacterWeaponRoot()
    local currAvatarWeaponL = findActiveCharacterWeaponL()
    local currAvatarWeaponR = findActiveCharacterWeaponR()
    local clonedAvatarWeaponRoot = findClonedCharacterWeaponRoot()
    local clonedAvatarWeaponL = findClonedCharacterWeaponL()
    local clonedAvatarWeaponR = findClonedCharacterWeaponR()
    local currAvatarEyeL = findActiveCharacterEyeL()
    local currAvatarEyeR = findActiveCharacterEyeR()
    local currAvatarToothD = findActiveCharacterToothD()
    local currAvatarToothU = findActiveCharacterToothU()
    local currAvatarFlyCloak = findActiveCharacterGlider()
    local clonedAvatarHeadBone = findClonedCharacterHeadBone()
    local clonedAvatarGlider = findClonedCharacterGlider()
    if clonedAvatarModel == nil then
      CS.UnityEngine.GameObject.Find("/BetaWatermarkCanvas(Clone)/Panel/TxtUID"):GetComponent("Text").text = "no cloned avatar found"
      return
    end
    for index = 0, currAvatarModel.transform.childCount - 1 do
      local currBodyPart = currAvatarModel.transform:GetChild(index).transform
      if currBodyPart.name == "Brow" then
        CS.UnityEngine.Object.Destroy(currBodyPart.gameObject)
      elseif currBodyPart.name == "Face" then
        CS.UnityEngine.Object.Destroy(currBodyPart.gameObject)
      elseif currBodyPart.name == "Face_Eye" then
        CS.UnityEngine.Object.Destroy(currBodyPart.gameObject)
      elseif currBodyPart.name == "Bip001" then
      else
        currBodyPart.gameObject:SetActive(false)
      end
    end
    for i = 0, clonedAvatarModel.transform.childCount - 1 do
      local originalPart = clonedAvatarModel.transform:GetChild(0).gameObject
      originalPart.transform:SetParent(currAvatarModel.transform)
      originalPart.transform:SetSiblingIndex(0)
    end
    currAvatarWeaponRoot.transform.parent = clonedAvatarWeaponRoot.transform
    currAvatarWeaponL.transform.parent = clonedAvatarWeaponL.transform
    currAvatarWeaponR.transform.parent = clonedAvatarWeaponR.transform
    currAvatarWeaponRoot.transform:SetSiblingIndex(0)
    currAvatarWeaponL.transform:SetSiblingIndex(0)
    currAvatarWeaponR.transform:SetSiblingIndex(0)
    local originClip = clonedAvatarModel:GetComponent(typeof(CS.miHoYoEmotion.ClipShapeManager))
    local targetClip = currAvatarModel:GetComponent(typeof(CS.miHoYoEmotion.ClipShapeManager))
    targetClip.currModelBindingList = originClip.currModelBindingList
    targetClip.faceMaterial = originClip.faceMaterial
    local originEyeKey = clonedAvatarModel:GetComponent(typeof(CS.miHoYoEmotion.EyeKey))
    local targetEyeKey = currAvatarModel:GetComponent(typeof(CS.miHoYoEmotion.EyeKey))
    targetEyeKey._leftEyeBoneHash = originEyeKey._leftEyeBoneHash
    targetEyeKey._leftEyeBallScaleTarget = originEyeKey._leftEyeBallScaleTarget
    targetEyeKey._leftEyeBoneHash = originEyeKey._leftEyeBoneHash
    targetEyeKey._leftEyeRotTarget = originEyeKey._leftEyeRotTarget
    targetEyeKey._originDownTeethPos = originEyeKey._originDownTeethPos
    targetEyeKey._originDownTeethRot = originEyeKey._originDownTeethRot
    targetEyeKey._originDownTeethScale = originEyeKey._originDownTeethScale
    targetEyeKey._originLeftEyeBallRot = originEyeKey._originLeftEyeBallRot
    targetEyeKey._originLeftEyeBallScale = originEyeKey._originLeftEyeBallScale
    targetEyeKey._originLeftEyeRot = originEyeKey._originLeftEyeRot
    targetEyeKey._originLeftEyeScale = originEyeKey._originLeftEyeScale
    targetEyeKey._originRightEyeBallRot = originEyeKey._originRightEyeBallRot
    targetEyeKey._originRightEyeBallScale = originEyeKey._originRightEyeBallScale
    targetEyeKey._originRightEyeRot = originEyeKey._originRightEyeRot
    targetEyeKey._originRightEyeScale = originEyeKey._originRightEyeScale
    targetEyeKey._originUpTeethRot = originEyeKey._originUpTeethRot
    targetEyeKey._originUpTeethScale = originEyeKey._originUpTeethScale
    targetEyeKey._rightEyeBallBoneHash = originEyeKey._rightEyeBallBoneHash
    targetEyeKey._rightEyeBallScaleTarget = originEyeKey._rightEyeBallScaleTarget
    targetEyeKey._rightEyeBoneHash = originEyeKey._rightEyeBoneHash
    targetEyeKey._rightEyeRotTarget = originEyeKey._rightEyeRotTarget
    targetEyeKey._rotDuration = originEyeKey._rotDuration
    targetEyeKey._rotTargetCurrtime = originEyeKey._rotTargetCurrtime
    targetEyeKey._scaleDuration = originEyeKey._scaleDuration
    targetEyeKey._scaleTargetCurrtime = originEyeKey._scaleTargetCurrtime
    targetEyeKey._teethDownHash = originEyeKey._teethDownHash
    targetEyeKey._teethUpHash = originEyeKey._teethUpHash
    targetEyeKey.currentController = originEyeKey.currentController
    targetEyeKey.leftEyeBallBone = originEyeKey.leftEyeBallBone
    targetEyeKey.leftEyeBallRot = originEyeKey.leftEyeBallRot
    targetEyeKey.leftEyeBallScale = originEyeKey.leftEyeBallScale
    targetEyeKey.leftEyeBone = originEyeKey.leftEyeBone
    targetEyeKey.leftEyeRot = originEyeKey.leftEyeRot
    targetEyeKey.leftEyeScale = originEyeKey.leftEyeScale
    targetEyeKey.rightEyeBallBone = originEyeKey.rightEyeBallBone
    targetEyeKey.rightEyeBallRot = originEyeKey.rightEyeBallRot
    targetEyeKey.rightEyeBallScale = originEyeKey.rightEyeBallScale
    targetEyeKey.rightEyeBone = originEyeKey.rightEyeBone
    targetEyeKey.rightEyeRot = originEyeKey.rightEyeRot
    targetEyeKey.rightEyeScale = originEyeKey.rightEyeScale
    targetEyeKey.teethDownBone = originEyeKey.teethDownBone
    targetEyeKey.teethDownPos = originEyeKey.teethDownPos
    targetEyeKey.teethDownRot = originEyeKey.teethDownRot
    targetEyeKey.teethDownScale = originEyeKey.teethDownScale
    targetEyeKey.teethUpBone = originEyeKey.teethUpBone
    targetEyeKey.teethUpRot = originEyeKey.teethUpRot
    targetEyeKey.teethUpScale = originEyeKey.teethUpScale
    currAvatarEyeL.transform.parent = clonedAvatarHeadBone.transform
    currAvatarEyeR.transform.parent = clonedAvatarHeadBone.transform
    currAvatarToothD.transform.parent = clonedAvatarHeadBone.transform
    currAvatarToothU.transform.parent = clonedAvatarHeadBone.transform
    currAvatarFlyCloak.transform.parent = clonedAvatarGlider.transform
    currAvatarEyeL.transform:SetSiblingIndex(0)
    currAvatarEyeR.transform:SetSiblingIndex(0)
    currAvatarToothD.transform:SetSiblingIndex(0)
    currAvatarToothU.transform:SetSiblingIndex(0)
    currAvatarFlyCloak.transform:SetSiblingIndex(0)
    local activeAvatar = findActiveCharacter()
    local activeAvatarBody = findActiveCharacterBody(currAvatarModel)
    activeAvatar:SetActive(false)
    activeAvatar:SetActive(true)
  end

swap()