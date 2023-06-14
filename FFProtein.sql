--first query
Select resturant, item, calories, protein
from fastfood;

-- adding in protein per calorie calculation
Select restaurant, item, calories, protein, (protein/calories)
from fastfood;

-- sorting by protein/calorie
Select restaurant, item, calories, protein, (protein/calories)
from fastfood
order by 5;

-- changing sorting to descending
Select restaurant, item, calories, protein, (protein/calories)
from fastfood
order by 5 desc;
-- note Sonic Ultimate Chicken Club seems like an unreasonable (and probably innacurate outlier)

-- changing name of protein/calorie calculation
Select restaurant, item, calories, protein, (protein/calories) as Protein_density
from fastfood
order by 5 desc;

-- adding sodium mainly for my curiosity
Select restaurant, item, calories, protein, (protein/calories) as Protein_density, Sodium
from fastfood
order by 5 desc;

--adding sodium per protein calculation
Select restaurant, item, calories, protein, (protein/calories) as Protein_density, sodium, (sodium/protein)
from fastfood
order by 5 desc;

-- Changing order to put the raw numbers and caculations together
Select restaurant, item, sodium, calories, protein, (protein/calories) as Protein_density, (sodium/protein)
from fastfood
order by 6 desc;

-- adding a filter to remove sodium options above that of acceptable sodium intake
Select restaurant, item, sodium, calories, protein, (protein/calories) as Protein_density, (sodium/protein)
from fastfood
where (sodium/protein) <40
order by 6 desc;

