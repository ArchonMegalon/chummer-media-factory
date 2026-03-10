namespace Chummer.Media.Contracts.Jobs;

/// <summary>
/// Defines the ownership boundary for dedupe decisions within the factory job queue.
/// </summary>
public enum RenderJobDedupeScope
{
    Request = 0,
    TemplateVersion = 1,
    OutputAsset = 2,
}
