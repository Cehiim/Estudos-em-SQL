select C.Nome_Curso, D.Nome_Disciplina 
    from Curso C left join Disciplina D 
    on (C.Cod_Curso = D.Cod_Curso) 
    order by D.Nome_Disciplina ASC 
;

select P.Nome_Professor, count(A.Cod_Professor_Orientador) as Qtde_alunos 
	from Professor P left join Aluno A 
    on (P.Cod_Professor = A.Cod_Professor_Orientador) 
    group by P.Nome_Professor
;

select P.Nome_Professor, D.Nome_Disciplina 
	from Professor P left join Prof_Disc PD 
    on (P.Cod_Professor = PD.Cod_Professor) 
    left join Disciplina D on (PD.Cod_Disciplina = D.Cod_Disciplina) 
    order by P.Nome_Professor DESC 
;

select A.Nome_Aluno, D.Nome_Disciplina, AD.Nota 
	from Aluno A left join Aluno_Disc AD 
    on (A.Matricula = AD.Matricula) 
    left join Disciplina D on (AD.Cod_Disciplina = D.Cod_Disciplina) 
    order by AD.Nota ASC 
;

select A.Nome_Aluno, count(AD.Matricula) as Qtde_Disciplinas 
	from Aluno A left join Aluno_Disc AD 
    on (A.Matricula = AD.Matricula) 
    group by A.Nome_Aluno 
    order by count(AD.Matricula) DESC 
;

select C.Nome_Curso, count(D.Cod_Curso) as Qtde_Disciplinas 
	from Curso C left join Disciplina D 
    on (C.Cod_Curso = D.Cod_Curso) 
    group by C.Nome_Curso 
    order by count(D.Cod_Curso) DESC 
;

select A.Nome_Aluno, avg(AD.Nota) as Média_Total 
	from Aluno A left join Aluno_Disc AD 
    on (A.Matricula = AD.Matricula) 
    group by A.Nome_Aluno 
    order by avg(AD.Nota) ASC 
;

select I.Nome_Instituto, D.Nome_Disciplina 
	from Instituto I left join Curso C 
    on (I.Cod_instituto = C.Cod_instituto) 
    left join Disciplina D on (C.Cod_Curso = D.Cod_Curso) 
    order by I.Nome_Instituto ASC 
;
