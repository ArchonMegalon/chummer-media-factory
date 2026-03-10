namespace Chummer.Media.Contracts.Assets;

/// <summary>
/// Approval result for a rendered asset after factory-side review state is persisted.
/// </summary>
public enum AssetApprovalStatus
{
    Pending = 0,
    Approved = 1,
    Rejected = 2,
}
