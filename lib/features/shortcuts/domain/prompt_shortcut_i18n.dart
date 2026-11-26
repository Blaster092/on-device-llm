/// The built-in prompt shortcuts in French and Spanish: the prompt a
/// French user's `/summarize` sends is written in French, so the model
/// answers in French. User-made shortcuts are sent as written.
class PromptShortcutI18n {
  /// name → (template, description, default /translate target).
  static const _fr = {
    'summarize': (
      'Résume le texte suivant en 3 à 5 points courts, en gardant les noms, les chiffres et les dates exacts.\n\n{input}',
      'Résumer le texte en quelques points',
      '',
    ),
    'translate': (
      'Traduis le texte suivant en {arg}. Réponds uniquement avec la traduction.\n\n{input}',
      'Traduire — /translate en <texte>',
      'anglais',
    ),
    'fix': (
      "Corrige l'orthographe, la grammaire et la ponctuation du texte suivant. Garde son sens, son ton et sa langue. Réponds uniquement avec le texte corrigé.\n\n{input}",
      "Corriger l'orthographe et la grammaire",
      '',
    ),
    'shorter': (
      'Réécris le texte suivant en le raccourcissant de moitié environ, sans perdre aucun fait. Réponds uniquement avec la réécriture.\n\n{input}',
      'Raccourcir le texte',
      '',
    ),
    'explain': (
      'Explique ce qui suit simplement, pour quelqu’un qui découvre le sujet, avec un exemple concret.\n\n{input}',
      'Expliquer simplement',
      '',
    ),
    'email': (
      'Rédige un e-mail clair et poli à partir de ces notes. Reste bref et termine par la prochaine étape.\n\n{input}',
      'Transformer des notes en e-mail',
      '',
    ),
    'code-review': (
      "Relis ce code. Liste d'abord les vrais bogues (avec la ligne et une correction), puis les améliorations nettes. Ne recopie pas le code.\n\n{input}",
      'Relire du code : bogues et améliorations',
      '',
    ),
  };

  static const _es = {
    'summarize': (
      'Resume lo siguiente en 3 a 5 puntos breves, manteniendo exactos los nombres, las cifras y las fechas.\n\n{input}',
      'Resumir el texto en unos puntos',
      '',
    ),
    'translate': (
      'Traduce el siguiente texto al {arg}. Responde solo con la traducción.\n\n{input}',
      'Traducir — /translate en <texto>',
      'inglés',
    ),
    'fix': (
      'Corrige la ortografía, la gramática y la puntuación del siguiente texto. Mantén su sentido, su tono y su idioma. Responde solo con el texto corregido.\n\n{input}',
      'Corregir ortografía y gramática',
      '',
    ),
    'shorter': (
      'Reescribe lo siguiente con aproximadamente la mitad de extensión, sin perder ningún dato. Responde solo con la nueva versión.\n\n{input}',
      'Acortar el texto',
      '',
    ),
    'explain': (
      'Explica lo siguiente con palabras sencillas, para alguien que no conoce el tema, con un ejemplo concreto.\n\n{input}',
      'Explicar de forma sencilla',
      '',
    ),
    'email': (
      'Redacta un correo claro y cortés a partir de estas notas. Que sea breve y termine con el siguiente paso.\n\n{input}',
      'Convertir notas en un correo',
      '',
    ),
    'code-review': (
      'Revisa este código. Enumera primero los errores reales (con la línea y una corrección) y después las mejoras claras. No repitas el código.\n\n{input}',
      'Revisar código: errores y mejoras',
      '',
    ),
  };

  static const _pt = {
    'summarize': (
      'Resume o seguinte em 3 a 5 pontos curtos, mantendo exatos os nomes, os números e as datas.\n\n{input}',
      'Resumir o texto em poucos pontos',
      '',
    ),
    'translate': (
      'Traduz o seguinte texto para {arg}. Responde apenas com a tradução.\n\n{input}',
      'Traduzir — /translate en <texto>',
      'inglês',
    ),
    'fix': (
      'Corrige a ortografia, a gramática e a pontuação do seguinte texto. Mantém o sentido, o tom e a língua. Responde apenas com o texto corrigido.\n\n{input}',
      'Corrigir ortografia e gramática',
      '',
    ),
    'shorter': (
      'Reescreve o seguinte com cerca de metade do tamanho, sem perder nenhum dado. Responde apenas com a nova versão.\n\n{input}',
      'Encurtar o texto',
      '',
    ),
    'explain': (
      'Explica o seguinte por palavras simples, para alguém que não conhece o tema, com um exemplo concreto.\n\n{input}',
      'Explicar de forma simples',
      '',
    ),
    'email': (
      'Redige um e-mail claro e cordial a partir destas notas. Sê breve e termina com o próximo passo.\n\n{input}',
      'Transformar notas num e-mail',
      '',
    ),
    'code-review': (
      'Revê este código. Enumera primeiro os erros reais (com a linha e uma correção) e depois as melhorias claras. Não repitas o código.\n\n{input}',
      'Rever código: erros e melhorias',
      '',
    ),
  };

  /// Language names for /translate's first word, in the prompt's language.
  static const languageNames = {
    'en': {
      'en': 'English',
      'fr': 'French',
      'es': 'Spanish',
      'de': 'German',
      'it': 'Italian',
      'pt': 'Portuguese',
      'nl': 'Dutch',
      'ro': 'Romanian',
      'pl': 'Polish',
      'ru': 'Russian',
      'uk': 'Ukrainian',
      'tr': 'Turkish',
      'ar': 'Arabic',
      'zh': 'Chinese',
      'ja': 'Japanese',
      'ko': 'Korean',
      'hi': 'Hindi',
    },
    'fr': {
      'en': 'anglais',
      'fr': 'français',
      'es': 'espagnol',
      'de': 'allemand',
      'it': 'italien',
      'pt': 'portugais',
      'nl': 'néerlandais',
      'ro': 'roumain',
      'pl': 'polonais',
      'ru': 'russe',
      'uk': 'ukrainien',
      'tr': 'turc',
      'ar': 'arabe',
      'zh': 'chinois',
      'ja': 'japonais',
      'ko': 'coréen',
      'hi': 'hindi',
    },
    'es': {
      'en': 'inglés',
      'fr': 'francés',
      'es': 'español',
      'de': 'alemán',
      'it': 'italiano',
      'pt': 'portugués',
      'nl': 'neerlandés',
      'ro': 'rumano',
      'pl': 'polaco',
      'ru': 'ruso',
      'uk': 'ucraniano',
      'tr': 'turco',
      'ar': 'árabe',
      'zh': 'chino',
      'ja': 'japonés',
      'ko': 'coreano',
      'hi': 'hindi',
    },
    'pt': {
      'en': 'inglês',
      'fr': 'francês',
      'es': 'espanhol',
      'de': 'alemão',
      'it': 'italiano',
      'pt': 'português',
      'nl': 'neerlandês',
      'ro': 'romeno',
      'pl': 'polaco',
      'ru': 'russo',
      'uk': 'ucraniano',
      'tr': 'turco',
      'ar': 'árabe',
      'zh': 'chinês',
      'ja': 'japonês',
      'ko': 'coreano',
      'hi': 'hindi',
    },
  };

  /// (template, description, defaultArg) of built-in [name] in [lang], or
  /// null for English and unknown names.
  static (String, String, String)? of(String name, String lang) =>
      switch (lang) {
        'fr' => _fr[name],
        'es' => _es[name],
        'pt' => _pt[name],
        _ => null,
      };
}
