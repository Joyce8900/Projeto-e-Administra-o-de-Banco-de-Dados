Select f.Nome, f. Salario
From (Select Avg (Salario) SalarioMedio
	From Funcionario Where cod_depto = 2) Media,
	Funcionario f
Where
	f.Salario > Media.SalarioMedio;