select restaurant, item, sodium, calories, protein, (protein/calories) as Protein_density, (sodium/protein)
from fastfood
where (sodium/protein) <40
order by 6 desc;

