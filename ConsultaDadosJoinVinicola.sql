select vin.nomeVinho, vin.anoVinho, vca.nomeVinicola, reg.nomeRegiao
from VinhosStore.Vinicola as vca
join Vinhos as vin on vca.codVinicola = vin.codVinicola
join Regiao as reg on vca.codRegiao = reg.codRegiao
order by vin.anoVinho