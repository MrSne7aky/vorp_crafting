local Core = exports.vorp_core:GetCore()

function CheckJob(joblist, jobSource)
    if not joblist or joblist == 0 then
        return true
    end
    jobSource = jobSource or 'server'
    local job = nil
    if jobSource == 'client' then
        job = LocalPlayer.state.Character.Job
    else
        job = Core.Callback.TriggerAwait("vorp_crafting:GetJob")
    end
    for _, v in pairs(joblist) do
        if v == job then
            return true
        end
    end

    return false
end
