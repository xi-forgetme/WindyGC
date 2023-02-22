function toggleslow()
    CS.UnityEngine.Time.timeScale = 0.5
    CS.MoleMole.ActorUtils.ShowMessage("Set the game speed to 0.5")
end
toggleslow()