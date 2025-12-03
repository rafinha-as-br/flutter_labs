lib/
main.dart  
-> Ponto de entrada do app. Chama AppInjector.init() e runApp().

/app  
-> Inicialização global do app (rotas, DI, temas).

    app.dart
      -> Cria o MaterialApp e aplica temas/rotas globais.
    
    app_routes.dart
      -> Registro centralizado de rotas nomeadas.
    
    app_injector.dart
      -> Configuração da injeção de dependências (singletons, services, repos).
      
    /providers -> Providers globais
    
    /gates -> Portões que define qual caminho o app vai seguir
	    gate_splash.dart -> Inicia prefs, database, theme e outras instãncias, direciona para os outros gates

/core  
-> Recursos globais, independentes de qualquer feature.

    /entities
      -> Entidades compartilhadas por múltiplas features (opcional).
    
    /errors
      -> Classes de erro e falhas globais.
    
	    /utils
      -> Funções auxiliares e helpers globais.
    
    /services
      -> Serviços globais: API client, SQLite, SharedPrefs, notificações, etc.
    
    /constants
      -> Valores fixos usados no app inteiro (strings, URLs, tamanhos, keys).

/features  
-> Cada funcionalidade do app isolada e independente.

    /<feature_name>
      
      /domain
        -> Regras de negócio da feature: entidades, casos de uso, repositórios abstratos.

      /data
        -> Implementações dos repositórios, DTOs, mappers e data sources.

      /presentation
        -> UI da feature: pages, widgets, controllers, states.

/shared  
-> Recursos visuais reaproveitáveis entre múltiplas features.

    /widgets
      -> Widgets reutilizáveis: botões, inputs, cards, layouts.

    /theme
      -> Tema global: cores, tipografia, espaçamentos, estilos.

    /extensions
      -> Extensões para tipos comuns: String, DateTime, BuildContext, Widget.

    /mixins
      -> Comportamentos reutilizáveis para classes: loading, snackbar,
         lifecycle, animações, validadores, etc.
