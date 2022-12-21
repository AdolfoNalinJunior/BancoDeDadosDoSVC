use dbcomercio

-- Procedimento mostrar categoria

create proc spmostrar_categoria
as 
select top 200 * from categoria
order by idcategoria desc 
go

-- Procedimento buscar nome categoria
create proc spbuscar_nome_categoria
@textobuscar varchar(100)
as select * from categoria where nome
like @textobuscar + '%'
go

-- Procedimento inserir categoria
create proc spinserir_categoria
@idcategoria int output,
@nome varchar(100),
@descricao varchar(500)
as 
insert into categoria(nome, descricao)
values(@nome, @descricao)
go

-- Procedimento editar categoria
create proc spedita_categoria
@idcategoria int,
@nome varchar(100),
@descricao varchar(500)
as 
update categoria set nome=@nome, descricao=@descricao
where idcategoria=@idcategoria
go

-- procedimento Deletar categoria
create proc spdeletar_categoria
@idcategoria int
as 
delete from categoria where idcategoria=@idcategoria
go


--Programando Tabela apresentação
create proc spmostrar_apresentacao
as 
select top 200 * from apresentação
order by idapresentacao desc
go

-- Procedimento buscar nome apresentação
create proc spbuscar_nome_apresentacao
@textobuscar varchar(100)
as 
select * from apresentacao
where nome like @textobuscar + '%'
go

-- Procedimento inserir apresentação
create proc spinserir_apresentacao
@idapresentacao int output,
@nome varchar(100),
@descricao varchar(500)
as
insert into apresentacao(nome, descricao)
values(@nome, @descricao)
go

-- Procedimento Editar apresntação
create proc speditar_apresentacao
@idapresentacao int output,
@nome varchar(100),
@descricao varchar(500)
as
update apresentacao set nome=@nome, descricao=@descricao
where idapresentacao=@idapresentacao
go

-- Procedimento Deletar apresentação
create proc spdeletar_apresentacao
@idapresentacao int
as 
delete from apresentacao 
where idapresentacao=@idapresentacao
go


-- Progrmando tabela Produto

-- Procedimento mostar Produto
create proc spmostrar_produto
as
select top 200 * from produtos
order by idproduto desc 
go

-- Procedimento inserir produto
create proc spinserir_produto
@idproduto int output,
@nome varchar(100),
@descricao varchar(500)
as 
insert into produtos(nome,descircao)
values(@nome, @descricao)
go

-- Procedimento Buscar nome produto
create proc spbuscar_nome_produto
@textobuscar varchar(100)
as 
select * from produtos
where nome like @textobuscar + '%'
go

-- Procedimento editar produtos
create proc speditrar_produto
@idprodutos int,
@nome varchar(100),
@descricao varchar(500)
as
update produtos set nome=@nome, descircao=@descricao 
where idproduto=@idprodutos
go

-- Procedimento deltar produtos
create proc spdeletar_produto
@idproduto int
as 
delete from produtos
where idproduto=@idproduto
go 