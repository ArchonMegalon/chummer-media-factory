namespace Chummer.Media.Contracts.Jobs;

/// <summary>
/// Lifecycle states for render job execution.
/// </summary>
public enum RenderJobStatus
{
    Queued = 0,
    Claimed = 1,
    Rendering = 2,
    Succeeded = 3,
    Failed = 4,
    Cancelled = 5,
}
