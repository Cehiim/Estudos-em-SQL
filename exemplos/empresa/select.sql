
select F.Nome_Func, F.Salario, D.Nome_Depto 
    from Funcionario F, Departamento D 
    where(D.Nome_Depto = 'Vendas') or (D.Nome_Depto = 'Pesquisa') 
    order by F.Nome_Func DESC, D.Nome_Depto DESC 
;

select distinct F.Nome_Func 
    from Funcionario F inner join Func_Proj FP 
    on (F.Cod_Func = FP.Cod_Func) 
    inner join Projeto P on (FP.Cod_Proj = P.Cod_Proj) 
    where((P.Cod_Proj = 1001) and (FP.Horas_Trab > 50))  
    or ((P.Cod_Proj = 1003) and (FP.Horas_Trab > 60)) 
    order by F.Nome_Func DESC 
;

select avg(F.Salario) as Media_Salario, max(F.Salario), min(F.Salario), count(F.Cod_Depto) as Qtde_Func 
    from Funcionario F inner join Departamento D 
    on (F.Cod_Depto = D.Cod_Depto) 
    where(D.Nome_Depto = 'Vendas') 
;

select D.Nome_Depto, sum(F.Salario) as Total_Gasto, avg(F.Salario) as Media_Salario 
    from Departamento D inner join Funcionario F 
    on (D.Cod_Depto = F.Cod_Depto) 
    group by D.Nome_Depto 
;

select F.Nome_Func, sum(FP.Horas_Trab * 100) as Pagamento_Total 
    from Funcionario F inner join Func_Proj FP 
    on (F.Cod_Func = FP.Cod_Func) 
    group by F.Nome_Func 
    order by sum(FP.Horas_Trab * 100) DESC 
;

select P.Nome_Proj 
    from Projeto P inner join Func_Proj FP 
    on (P.Cod_Proj = FP.Cod_Proj) 
    inner join Funcionario F on (FP.Cod_Func = F.Cod_Func) 
    where(F.Nome_Func = 'Mario Souza') 
;

select F.Nome_Func 
    from Funcionario F inner join Func_Proj FP 
    on (F.Cod_Func = FP.Cod_Func) 
    inner join Projeto P on (FP.Cod_Proj = P.Cod_Proj) 
    where((P.Nome_Proj = 'SistemaB') or (P.Nome_Proj = 'SistemaX')) 
;

select F.Nome_Func, P.Nome_Proj, FP.Horas_Trab 
    from Funcionario F inner join Func_Proj FP 
    on (F.Cod_Func = FP.Cod_Func) 
    inner join Projeto P on (FP.Cod_Proj = P.Cod_Proj) 
	order by F.Nome_Func DESC, P.Nome_Proj DESC 
;

select F.Nome_Func, count(FP.Cod_Proj) as Qtde_Proj
    from Funcionario F inner join Func_Proj FP 
    on (F.Cod_Func = FP.Cod_Func) 
    inner join Departamento D on (F.Cod_Depto = D.Cod_Depto) 
    where(D.Nome_Depto = 'Marketing') 
    group by F.Nome_Func 
;

select distinct P.Nome_Proj, P.Duracao 
    from Projeto P inner join Func_Proj FP 
    on (P.Cod_Proj = FP.Cod_Proj) 
    inner join Funcionario F on (FP.Cod_Func = F.Cod_Func) 
    inner join Departamento D on (F.Cod_Depto = D.Cod_Depto) 
    where(D.Nome_Depto = 'Marketing') 
;
