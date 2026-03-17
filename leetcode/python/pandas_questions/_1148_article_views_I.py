import pandas as pd  # type: ignore

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    saw_article = views.query('author_id == viewer_id')
    saw_article.rename(columns={'author_id': 'id'}, inplace=True)
    return saw_article[['id']].drop_duplicates().sort_values(by='id')
