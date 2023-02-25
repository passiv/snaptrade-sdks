from snaptrade_client.paths.model_portfolio_model_portfolio_id.get import ApiForget
from snaptrade_client.paths.model_portfolio_model_portfolio_id.post import ApiForpost
from snaptrade_client.paths.model_portfolio_model_portfolio_id.delete import ApiFordelete


class ModelPortfolioModelPortfolioId(
    ApiForget,
    ApiForpost,
    ApiFordelete,
):
    pass
