local find_active_char = function()
    local avatarroot = CS.UnityEngine.GameObject.Find("/EntityRoot/AvatarRoot")
    for i = 0, avatarroot.transform.childCount - 1 do
      local child = avatarroot.transform:GetChild(i)
      if child.gameObject.activeInHierarchy then
        return child.gameObject
      end
    end
  end
  local find_body = function(avatar)
    for i = 0, avatar.transform.childCount - 1 do
      local transform = avatar.transform:GetChild(i)
      if transform.name == "OffsetDummy" then
        return transform
      end
    end
  end
  local scale = function()
    local avatar = find_active_char()
    CS.MoleMole.ActorUtils.ShowMessage("<color=FED049>Changed Everything back to normal.</color>")
    local obj = find_body(avatar):GetChild(0)
    obj.transform.localScale = CS.UnityEngine.Vector3(1, 1, 1)
    CS.UnityEngine.Time.timeScale = 1.0
    CS.UnityEngine.RenderSettings.fog = true
    CS.UnityEngine.QualitySettings.vSyncCount = 1
    CS.UnityEngine.Application.targetFrameRate = 60
  end
scale()