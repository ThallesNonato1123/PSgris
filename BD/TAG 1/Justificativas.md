# Justificativas

## Indíce:
- [Candidato](##Candidato)
- [Representante do GRIS](##Representante-do-GRIS)
- [Tag](##Tag)
- [Candidato_tag](##Candidato_tag)

## Candidato:
### Uma das peças fundamentais para o desenvolvimento do processo seletivo é o canditado , o banco de dados todo gira em torno dele. Precisamos dele para guardar os dados dos alunos que estão fazendo o processo seletivo.

### Atributos:
| Atributo | Justificativa
---------- | -------------
DRE (Primary Key) | Serve como identificador **único** dos candidatos.
Nome | Serve para identificar o candidato.
E-mail | Serve para comunicação pré-treinamento.
Telegram | Serve para comunicação durante o treinamento, aonde são enviados os materiais das disciplinas.
Nota do questionário| Serve para ter uma classificação previa do nível do candidato

## Representante do GRIS:
### Além do candidato, os representantes do GRIS também são essênciais para o processo seletivo. São eles que passam as Tag's e orientam os candidatos, tanto ministrando aulas como respondendo duvidas. 

### Atributos:
| Atributo | Justificativa
---------- | -------------
DRE (Primary Key) | Serve como identificador **único** dos representantes.
Nome | Serve para identificar o representante.

## Tag:
### As tag's são os trabalhos que os representantes dos GRIS passam para os candidatos do processo seletivo . Sua importância no banco de dados se da pelo fato de que precisamos mensurar o comprometimento do candidato com o grupo de extensão, para isso vemos se o candidato entregou sua tag na data prevista, e também se produziu um bom trabalho.

### Atributos:
| Atributo | Justificativa
---------- | -------------
Id (Primary Key) | Serve como identificador **único** das tag's.
Prazo | Serve para estipular uma data para a entrega da tag.
Nome | Serve para identificar o assunto da tag.
Materia (Foreign Key)| Serve para saber de qual matéria é a tag.

## Candidato_tag:

### A tabela candidato_tag é uma tabela de agregação, a qual relaciona as entidades "candidato" e "tag". Desta forma, informando quais tag's estão relacionadas aos respectivos candidatos. Juntamente com as datas de entrega dessas tag's pelos candidatos.

### Atributos:
| Atributo | Justificativa
---------- | -------------
Id (Primary Key) | Serve como identificador **único** da tabela.
Candidato (Foreign Key)| Identifica qual candidato será relacionado a tag.
Tag (Foreign Key)| Identifica qual tag esta relacionado com cada candidato.
Data de Entrega| Informa qual data o candidato entregou a tag.

## Materia:

### A matéria são as aulas que os representantes do GRIS ministram. Sua importância no banco de dados se da pelo fato que o Database deve guardar quem esta responsável por cada disciplina no processo seletivo.

### Atributos:
| Atributo | Justificativa
---------- | -------------
Nome (Primary Key) | O nome da aula serve como identificador das matérias.
Professor (Foreign Key)| Identifica qual representante do GRIS será relacionado a matéria, em outras palavras, quem ministra cada aula.

## Candidato_materia:

### A tabela candidato_materia é uma tabela de agregação, a qual relaciona as entidades "candidato" e "materia". Desta forma, informando quais materias estão relacionadas aos respectivos candidatos, e , vice-versa. 

### Atributos:
| Atributo | Justificativa
---------- | -------------
Id (Primary Key) | Serve como identificador **único** da tabela.
Candidato (Foreign Key)| Identifica qual candidato será relacionado a matéria.
materia (Foreign Key)| Identifica qual matéria esta relacionado com cada candidato.


