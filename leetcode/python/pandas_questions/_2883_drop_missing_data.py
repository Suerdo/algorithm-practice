import pandas as pd # type: ignore

def dropMissingData(students: pd.DataFrame) -> pd.DataFrame:
    students = students.dropna(subset=['name']) 
    return students