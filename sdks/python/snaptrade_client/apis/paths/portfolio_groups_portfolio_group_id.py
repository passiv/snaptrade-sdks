from snaptrade_client.paths.portfolio_groups_portfolio_group_id.get import ApiForget
from snaptrade_client.paths.portfolio_groups_portfolio_group_id.delete import ApiFordelete
from snaptrade_client.paths.portfolio_groups_portfolio_group_id.patch import ApiForpatch


class PortfolioGroupsPortfolioGroupId(
    ApiForget,
    ApiFordelete,
    ApiForpatch,
):
    pass
