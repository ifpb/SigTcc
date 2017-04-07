# Be sure to restart your server when you modify this file.

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )

#método do RDFa
#Carrega vocabulários

Rdfa.register_rdfa_namespace 'vivo',  'http://vivoweb.org/ontology/core#'
Rdfa.register_rdfa_namespace 'ugw', 'http://www.openuai.ifpb.edu.br/ontologytcc#'
Rdfa.register_rdfa_namespace 'schema', 'http://schema.org/'
Rdfa.register_rdfa_namespace  'teach', 'http://linkedscience.org/teach/ns/'
Rdfa.register_rdfa_namespace 'ov'  , 'http://open.vocab.org/terms#'
Rdfa.register_rdfa_namespace 'dcat'  , 'http://www.w3.org/ns/dcat#'
Rdfa.register_rdfa_namespace   'dbo'  , 'http://dbpedia.org/ontology/'
#Rdfa.register_rdfa_namespace   ''  , ''
#Rdfa.register_rdfa_namespace   ''  , ''
#Rdfa.register_rdfa_namespace   ''  , ''

#Carrega classes
 Rdfa.register_rdfa_classes 'teach', ['Teacher']
 Rdfa.register_rdfa_classes 'ugw', ['AtaDefesa', 'TCC', 'Tipo', 'Extensao', 'Pesquisa', 'Trabalho', 'Estagio']
 Rdfa.register_rdfa_classes 'vivo', ['UndergraduateStudent']
# Rdfa.register_rdfa_classes '', ['','']
# Rdfa.register_rdfa_classes '', ['','']


#Carrega propriedades
Rdfa.register_rdfa_properties 'schema', ['email', 'scheduleTime']
Rdfa.register_rdfa_properties 'ugw', ['temAtaDefesa', 'temTipo', 'propostaAprovada','dataApresentacao', 'temProposta']
Rdfa.register_rdfa_properties 'ov', ['semester']
Rdfa.register_rdfa_properties 'dcat', ['keyword']
Rdfa.register_rdfa_properties 'dbo', ['fileURL', 'grades', 'releaseDate']
Rdfa.register_rdfa_properties 'teach', ['room']
#Rdfa.register_rdfa_properties '', ['']
#Rdfa.register_rdfa_properties '', ['']
#Rdfa.register_rdfa_properties '', ['']
